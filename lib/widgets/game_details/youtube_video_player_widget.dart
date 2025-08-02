import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoPlayer extends StatefulWidget {
  @override
  _YouTubeVideoPlayerState createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late YoutubePlayerController _controller;
  bool _isVideoIdValid = true;

  @override
  void initState() {
    super.initState();
    final videoUrl = 'https://youtu.be/yE8P78kVHLU?feature=shared';
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    if (videoId == null) {
      _isVideoIdValid = false;
    } else {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    if (_isVideoIdValid) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isVideoIdValid) {
      return Center(
        child: Text(
          "Неверный URL видео.",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: YoutubePlayer(
        width: 370,
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    );
  }
}
