import 'package:flutter/material.dart';
import 'package:newpipeextractor_dart/models/infoItems/video.dart';
import 'package:newpipeextractor_dart/models/playlist.dart';
import 'package:newpipeextractor_dart/models/video.dart';

class TagsControllers {
  TextEditingController urlController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController albumController = TextEditingController();
  TextEditingController artistController = TextEditingController();
  TextEditingController genreController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController discController = TextEditingController();
  TextEditingController trackController = TextEditingController();
  String artworkController = "";

  void updateTextControllers(YoutubeVideo stream) {
    titleController.text = stream.videoInfo.name ?? "";
    albumController.text = "YouTube";
    artistController.text =
        stream.videoInfo.uploaderName ?? "".replaceAll("- Topic", "").trim();
    genreController.text = "Any";
    dateController.text = stream.videoInfo.uploadDate ?? "";
    discController.text = "1";
    trackController.text = "1";
    artworkController = stream.videoInfo.thumbnailUrl ?? "";
  }

  void updateTextControllersFromPlaylist(YoutubePlaylist playlist) {
    titleController.text = playlist.name ?? "";
    albumController.text = "YouTube";
    artistController.text = playlist.uploaderName ?? "";
    genreController.text = "Any";
    dateController.text = "${DateTime.now().year}/" +
        "${DateTime.now().month}" +
        "${DateTime.now().day}";
    discController.text = "1";
    trackController.text = "1";
    artworkController = playlist.thumbnailUrl ?? "";
  }

  void updateTextControllersFromStream(StreamInfoItem stream) {
    titleController.text = stream.name ?? "";
    albumController.text = "YouTube";
    artistController.text = stream.uploaderName ?? "";
    genreController.text = "Any";
    dateController.text = "${DateTime.now().year}/" +
        "${DateTime.now().month}" +
        "${DateTime.now().day}";
    discController.text = "1";
    trackController.text = "1";
    artworkController = stream.thumbnails?.hqdefault ?? "";
  }
}
