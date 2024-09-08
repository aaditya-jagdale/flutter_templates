import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BackgroundVideoPlayer extends StatefulWidget {
  final String videoUrl;

  const BackgroundVideoPlayer({super.key, required this.videoUrl});

  @override
  State<BackgroundVideoPlayer> createState() => _BackgroundVideoPlayerState();
}

class _BackgroundVideoPlayerState extends State<BackgroundVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.setVolume(0);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Colors.black,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
  }
}
