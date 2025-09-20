import 'package:flutter/material.dart';
import 'package:flutter_vimeo/flutter_vimeo.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String vimeoVideoId;

  const VideoPlayerWidget({super.key, required this.vimeoVideoId});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Fixed height for the video player
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: FlutterVimeoPlayer(
          videoId: widget.vimeoVideoId,
          isAutoPlay: false,
          isLooping: false,
          showControls: true,
          showTitle: false,
          showByline: false,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
