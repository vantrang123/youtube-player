import 'package:app/data/model/media.dart';
import 'package:app/data/model/snippet.dart';
import 'package:app/data/model/thumbnail.dart';

import 'news.dart';

class Queue {
  int currentIndex = 0;
  List<News> videos = [
    News(
        id: "bvfsNDa3Bg0",
        kind: "Fairy Fountain",
        snippet: Snippet(
            thumbnails: Thumbnail(
                high: Media(
                    url: "https://i.ytimg.com/vi/eaMpXK8cpVM/mqdefault.jpg"))))
  ];

  Queue(int currentIndex, List<News> videos) {
    this.currentIndex = currentIndex;
    this.videos = videos;
  }

  // Return the video object at the current index
  News getCurrentSong() {
    return videos[currentIndex];
  }
}
