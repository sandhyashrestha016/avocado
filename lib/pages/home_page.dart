import 'package:avocado/bloc/get_post_bloc/get_post_event.dart';
import 'package:avocado/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/get_post_bloc/get_post_bloc.dart';
import '../helper/color_constants.dart';
import 'get_api_data.dart';
import 'youtube_video/youtube_video_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FigmaColors.primaryColor,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: FigmaColors.primaryColor,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => GetPostBloc(
                          postRepository: PostRepository(),
                        )..add(GetPostLoadedEvent()),
                        child: const GetApiPage(),
                      );
                    },
                  ));
                },
                icon: const Icon(Icons.file_copy_rounded),
                label: const Text("GetApiData")),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: FigmaColors.youtubeColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const YoutubeVideoList(),
                      ));
                },
                icon: const Icon(Icons.video_collection_sharp),
                label: const Text("Youtube Video"))
          ],
        ),
      ),
    );
  }
}
