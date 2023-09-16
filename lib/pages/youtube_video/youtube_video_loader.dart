// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Creates  of video players
class PlayVideo extends StatefulWidget {
  const PlayVideo({required this.url, super.key});
  final String url;

  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController controllers = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url).toString(),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
      ),
    );
    return YoutubePlayer(
      key: ObjectKey(controllers),
      controller: controllers,
      // actionsPadding: const EdgeInsets.only(left: 16.0),
      bottomActions: [
        CurrentPosition(),
        const SizedBox(width: 10.0),
        ProgressBar(isExpanded: true),
        const SizedBox(width: 10.0),
        RemainingDuration(),
        FullScreenButton(),
      ],
    );
  }
}
