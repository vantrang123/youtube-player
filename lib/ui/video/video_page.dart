import 'package:app/data/provider/preferences_provider.dart';
import 'package:app/data/provider/video_page_provider.dart';
import 'package:app/ui/video/video_player.dart';
import 'package:flutter/material.dart';
import 'package:newpipeextractor_dart/models/streams/videoOnlyStream.dart';
import 'package:provider/provider.dart' as pd;

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: _videoPlayerWidget(),
        ),
      ),
    );
  }

  Widget _videoPlayerWidget() {
    VideoPageProvider pageProvider = pd.Provider.of<VideoPageProvider>(context);
    PreferencesProvider prefs = pd.Provider.of<PreferencesProvider>(context);
    return StreamManifestPlayer(
      segments: pageProvider.currentVideo?.segments ?? [],
      onAspectRatioInit: (value) => setState(() {}),
      quality:
          prefs.youtubePlayerQuality.split("•").last.trim().split('p').first,
      onQualityChanged: (String quality) {
        prefs.youtubePlayerQuality = quality;
      },
      borderRadius:
          MediaQuery.of(context).orientation == Orientation.landscape ? 0 : 10,
      key: pageProvider.playerKey,
      videoTitle: pageProvider.currentVideo?.videoInfo.name ?? "",
      streams: pageProvider.currentVideo?.videoOnlyStreams?.isNotEmpty ?? false
          ? pageProvider.currentVideo?.videoOnlyStreams ?? []
          : pageProvider.currentVideo?.videoStreams ?? [],
      audioStream:
          pageProvider.currentVideo?.videoOnlyStreams?.isNotEmpty ?? false
              ? pageProvider.currentVideo
                  ?.getAudioStreamWithBestMatchForVideoStream(
                      pageProvider.currentVideo?.videoOnlyWithHighestQuality ??
                          VideoOnlyStream(null, null, null, null, null, null))
              : null,
      isFullscreen: MediaQuery.of(context).orientation == Orientation.landscape
          ? true
          : false,
      onAutoPlay: () async {},
      onFullscreenTap: () {},
      onEnterPipMode: () {},
    );
  }
}
