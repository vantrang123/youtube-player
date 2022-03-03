import 'package:app/data/internal/avatar_handler.dart';
import 'package:app/data/model/tags_controllers.dart';
import 'package:app/ui/video/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:newpipeextractor_dart/extractors/channels.dart';
import 'package:newpipeextractor_dart/extractors/comments.dart';
import 'package:newpipeextractor_dart/extractors/videos.dart';
import 'package:newpipeextractor_dart/models/channel.dart';
import 'package:newpipeextractor_dart/models/comment.dart';
import 'package:newpipeextractor_dart/models/infoItems/playlist.dart';
import 'package:newpipeextractor_dart/models/infoItems/video.dart';
import 'package:newpipeextractor_dart/models/playlist.dart';
import 'package:newpipeextractor_dart/models/video.dart';

class VideoPageProvider extends ChangeNotifier {
// Current infoItem & YoutubeVideo
  dynamic _infoItem;
  YoutubeVideo? currentVideo;
  YoutubePlaylist? currentPlaylist;
  TagsControllers? currentTags;
  YoutubeChannel? currentChannel;
  List<StreamInfoItem>? currentRelatedVideos;
  List<YoutubeComment>? currentComments;
  bool isPlaylist = true;

  // Video Player Key
  GlobalKey<StreamManifestPlayerState> playerKey = GlobalKey<StreamManifestPlayerState>();

  dynamic get infoItem => _infoItem;

  set infoItem(dynamic infoItem) {
    if (_infoItem != null) {
      // if (fwController.isAttached) fwController.open();
    }
    if (currentPlaylist == null) {
      if (infoItem is StreamInfoItem) {
        initializeStream(infoItem);
      } /*else if (infoItem is PlaylistInfoItem || infoItem is StreamPlaylist) {
        initializePlaylist(infoItem);
      }*/
    } else {
      _infoItem = infoItem;
      currentVideo = null;
      currentChannel = null;
      currentComments = null;
      isPlaylist = true;
      currentTags = null;
      notifyListeners();
      _infoItem.getVideo.then((value) {
        currentVideo = value;
        currentTags = TagsControllers();
        currentTags!.updateTextControllers(value);
        // saveToHistory(currentVideo.toStreamInfoItem());
        notifyListeners();
        CommentsExtractor.getComments(currentVideo?.videoInfo.url ?? "").then((comments) {
          currentComments = comments;
          notifyListeners();
        });
      });
      _infoItem.getChannel.then((value) {
        currentChannel = value;
        notifyListeners();
      });
    }
  }

  void initializeStream(StreamInfoItem item) async {
    _infoItem = item;
    currentVideo = null;
    currentChannel = null;
    currentPlaylist = null;
    currentComments = null;
    currentTags = null;
    isPlaylist = false;
    notifyListeners();
    await _infoItem.getVideo.then((value) {
      currentVideo = value;
      currentTags = TagsControllers();
      currentTags!.updateTextControllers(value);
      // saveToHistory(currentVideo.toStreamInfoItem());
      notifyListeners();
    });
    CommentsExtractor.getComments(currentVideo?.videoInfo.url ?? "").then((comments) {
      currentComments = comments;
      notifyListeners();
    });
    _infoItem.getChannel.then((value) async {
      currentChannel = value;
      notifyListeners();
      currentChannel?.avatarUrl = await
      AvatarHandler.getAvatarUrl(currentChannel?.name ?? "", currentChannel?.url ?? "");
      notifyListeners();
    });
    VideoExtractor.getRelatedStreams(_infoItem.url).then((value) async {
      if (value.isEmpty) {
        currentRelatedVideos = await ChannelExtractor
            .getChannelUploads(_infoItem.uploaderUrl);
      } else {
        currentRelatedVideos = value;
      }
      notifyListeners();
    });
  }
}
