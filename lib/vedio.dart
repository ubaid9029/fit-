import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Vedio extends StatefulWidget {
  @override
  _VedioState createState() => _VedioState();
}

class _VedioState extends State<Vedio> {
  VideoPlayerController _controller;
  Future<void> _initializeVPFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      'assets/vedios/ved2.mp4',
    );
    _initializeVPFuture = _controller.initialize();
    _controller.setLooping(false);

    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xFFFF9b31),
        ),
        backwardsCompatibility: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.white,
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Text(
          'vedio page',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFFFF9b31)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FutureBuilder(
                future: _initializeVPFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                        aspectRatio: 16 / 9, child: VideoPlayer(_controller));
                  } else
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                },
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Center(
              child: GestureDetector(
                child: Icon(
                  _controller.value.isPlaying
                      ? Icons.volume_up
                      : Icons.volume_off,
                  color: Colors.white,
                  size: 30.0,
                ),
                onTap: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      return _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      return _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 30.0,
                ),
                backgroundColor: Colors.orange.shade300,
                hoverColor: Color(0xFFFF9b31),
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      return _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                child: Icon(_controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow),
                backgroundColor: Colors.orange.shade300,
                hoverColor: Color(0xFFFF9b31),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
