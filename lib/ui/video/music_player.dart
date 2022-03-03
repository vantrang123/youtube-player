import 'package:app/data/model/news.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MusicPlayerPage extends StatefulWidget {
  final News? news;

  const MusicPlayerPage({
    Key? key,
    @QueryParam('news') this.news,
  }) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayerPage> {
  late YoutubePlayerController _controller;

  bool _playing = true;
  bool _viewQueue = false;

  String _title = "";
  String _author = "";
  final String _nextSong = "";

  int threshold = 100;

  @override
  void initState() {
    super.initState();
    News video = widget.news!;
    _controller = YoutubePlayerController(
      //initialVideoId: widget.video.id,
      initialVideoId: video.id ?? "",
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        hideControls: true,
      ),
    );
    _controller.value =
        YoutubePlayerValue(isPlaying: false, position: const Duration());
    _setVideoInfo(video.snippet?.title ?? "", video.snippet?.channelTitle ?? "");
    _setNextVideoInfo();
    //queue = new Queue();
    //_setQueue();
  }

  void _setVideoInfo(String title, String channelTitle) {
    setState(() {
      _title = title;
      _author = channelTitle;
    });
  }

  void _switchPlayPauseButton() {
    // was playing, pause video
    if (_controller.value.isPlaying) {
      _controller.pause();
      setState(() {
        _playing = false;
      });
    }
    // was paused, play video
    else {
      _controller.play();
      setState(() {
        _playing = true;
      });
    }
  }

  void _previousVideo() {
    /*if (widget.news?.currentIndex > 0) {
      widget.queue.currentIndex--; // previous index
      News previous = widget.queue.videos[widget.queue.currentIndex];
      _controller.load(previous.id ?? "");
      _setVideoInfo(previous.snippet?.title ?? "", previous.snippet?.channelTitle ?? "");
      _setNextVideoInfo();
      _controller.play();
      _playing = true;
      print("PLAYING PREVIOUS SONG");
    } else
      print("Already at the start of queue!");*/
  }

  void _nextVideo() {
    /*if (widget.queue.currentIndex < widget.queue.videos.length - 1) {
      widget.queue.currentIndex++; // next index
      News next = widget.queue.videos[widget.queue.currentIndex];
      _controller.load(next.id ?? "");
      _setVideoInfo(next.snippet?.title ?? "", next.snippet?.channelTitle ?? "");
      _setNextVideoInfo();
      _controller.play();
      _playing = true;
      print("PLAYING NEXT SONG");
    } else
      print("No more videos left in the queue!");*/
  }

  void _playQueueVideo(int index) {
    News selection = widget.news!;
    _controller.load(selection.id ?? "");
    _setVideoInfo(selection.snippet?.title ?? "", selection.snippet?.channelTitle ?? "");
    _setNextVideoInfo();
    _controller.play();
    _playing = true;
    print("PLAYING SONG FROM QUEUE, INDEX: " + index.toString());
    /*if (index >= 0 && index < widget.queue.videos.length) {
      widget.queue.currentIndex = index;
      News selection = widget.queue.videos[widget.queue.currentIndex];
      _controller.load(selection.id ?? "");
      _setVideoInfo(selection.snippet?.title ?? "", selection.snippet?.channelTitle ?? "");
      _setNextVideoInfo();
      _controller.play();
      _playing = true;
      print("PLAYING SONG FROM QUEUE, INDEX: " + index.toString());
    } else
      print("INVALID QUEUE INDEX");*/
  }

  void _setNextVideoInfo() {
    // update info on the bottom bar
    // if (widget.queue.currentIndex < widget.queue.videos.length - 1) {
    //   // if next video is available
    //   News nextVideo = widget.queue.videos[widget.queue.currentIndex + 1];
    //   setState(() {
    //     _nextSong = "Next: Sample Video Name 2 by Sample Artist 2";
    //     _nextSong = "Next: ${nextVideo.snippet?.title ?? "f"} by ${nextVideo.snippet?.channelTitle}";
    //   });
    // } else {
    //   _nextSong = "End of Queue";
    // }
  }

  _buildQueueVideo(News video, int index) {
    return ListTile(
      leading: Image.network(video.snippet?.thumbnails?.high?.url ?? ""),
      title: Text(video.snippet?.title ?? ""),
      subtitle: Text(video.snippet?.channelTitle ?? ""),
      //trailing: Icon(Icons.drag_handle),
      onTap: () {
        _playQueueVideo(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onPanEnd: (details) {
          if (details.velocity.pixelsPerSecond.dy > threshold) {
            setState(() {
              _viewQueue = false;
            });
          } else if (details.velocity.pixelsPerSecond.dy < -threshold) {
            setState(() {
              _viewQueue = true;
            });
          }
        },
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  // for top bar
                  height: height / 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        alignment: Alignment.bottomCenter,
                        child: IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 40,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      /*
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.bottomCenter,
                        child: IconButton(
                          icon: Icon(Icons.more_vert),
                          iconSize: 40,
                          onPressed: () {},
                        ),
                      ),
                      */
                    ],
                  ),
                ),
                SizedBox(
                  // VIDEO PLAYER
                  height: 2 * height / 5,
                  child: YoutubePlayer(
                    controller: _controller,
                    onReady: () {
                      print("Video player loaded. Playing video.");
                      _controller.play();
                      _playing = true;
                    },
                    onEnded: (YoutubeMetaData) {
                      _nextVideo();
                    },
                  ),
                ),
                Expanded(
                  // video info, artist, like button, add button
                  flex: 15,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          _title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          _author,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  // video timestamp
                  flex: 5,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: ProgressBar(
                          controller: _controller,
                        ),
                      ),
                      Expanded(
                        // timestamp numbers
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: CurrentPosition(
                                controller: _controller,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 25),
                              child: RemainingDuration(
                                controller: _controller,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  // back, play/pause, skip buttons
                  flex: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      /*
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        iconSize: 35,
                        onPressed: () {},
                      ),
                      */
                      IconButton(
                        icon: const Icon(Icons.skip_previous),
                        iconSize: 40,
                        onPressed: () {
                          if (_controller.value.position.inSeconds >= 5.0) {
                            if (_controller.value.isPlaying) {
                              _controller.seekTo(Duration());
                            } else {
                              _controller.seekTo(Duration());
                              _controller.pause();
                              setState(() {
                                _playing = false;
                              });
                            }
                          } else {
                            _previousVideo();
                          }
                        },
                      ),
                      _playing
                          ? IconButton(
                              iconSize: 40,
                              icon: const Icon(Icons.pause),
                              onPressed: () {
                                _switchPlayPauseButton();
                              },
                            )
                          : IconButton(
                              iconSize: 40,
                              icon: const Icon(Icons.play_arrow),
                              onPressed: () {
                                _switchPlayPauseButton();
                              },
                            ),
                      IconButton(
                        icon: const Icon(Icons.skip_next),
                        iconSize: 40,
                        onPressed: () {
                          _nextVideo();
                        },
                      ),
                      /*
                      IconButton(
                        icon: Icon(Icons.playlist_add),
                        iconSize: 35,
                        onPressed: () {},
                      ),
                      */
                    ],
                  ),
                ),
                /*
                Expanded(
                  // sleep mode button
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.cyan,
                        onPressed: () {

                        },
                        child: Text(
                          "Sleep Mode",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )
                    ],
                  ),
                ),
                */
                SizedBox(
                  // QUEUE BAR Bottom Area
                  height: height / 10,
                ),
              ],
            ),
            AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 200),
              left: 0.0,
              bottom: (_viewQueue) ? 0 : -(2 * height / 5),
              child: Container(
                // QUEUE MENU
                width: width,
                height: height / 2,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          _viewQueue = !_viewQueue;
                        });
                      },
                      child: Container(
                        // QUEUE BAR
                        height: height / 10,
                        decoration: const BoxDecoration(
                          color: Colors.black38,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: const Icon(
                                Icons.queue_music,
                                size: 40.0,
                              ),
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _nextSong,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            )),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: _viewQueue
                                    ? const Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 40.0,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_up,
                                        size: 40.0,
                                      )),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: ListView.builder(
                        //shrinkWrap: true,
                        //padding: EdgeInsets.all(8.0),
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          News video = widget.news!;
                          return _buildQueueVideo(video, index);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } // end of widget
} // end of class
