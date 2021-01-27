import 'package:chewie/chewie.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class ChewieDemo extends StatefulWidget {
  ChewieDemo({this.title = 'Day 1 exercise'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    this.initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 =
        VideoPlayerController.asset('assets/vedios/ved2.mp4');

    await _videoPlayerController1.initialize();
    _videoPlayerController2 =
        VideoPlayerController.asset('assets/vedios/ved1.mp4');
    await _videoPlayerController2.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: true,
      showControls: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.white,
        bufferedColor: Color(0xFFFF9b31),
      ),
      placeholder: Container(
        color: Color(0xFFFF9b31),
      ),
      autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.title,
      theme: ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Color(0xFFFF9b31),
          ),
          title: Text(
            widget.title,
            style: TextStyle(color: Color(0xFFFF9b31)),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Center(
              child: _chewieController != null &&
                      _chewieController.videoPlayerController.value.initialized
                  ? Chewie(
                      controller: _chewieController,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 20),
                        Text('Loading'),
                      ],
                    ),
            ),
          ),
        ]),
      ),
    );
  }
}
