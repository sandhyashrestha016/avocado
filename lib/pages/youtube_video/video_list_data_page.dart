import 'package:flutter/material.dart';

import '../../helper/color_constants.dart';
import '../../model/video_list_model.dart';
import 'youtube_video_details.dart';
import 'youtube_video_loader.dart';

class VideoListDataPage extends StatefulWidget {
  const VideoListDataPage({super.key});

  @override
  State<VideoListDataPage> createState() => _VideoListDataPageState();
}

class _VideoListDataPageState extends State<VideoListDataPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: videoListModeldetails.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YoutubeVideoDetails(
                        dataDetails: videoListModeldetails[index]),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoListModeldetails[index].title,
                    style: const FigmaTextStyles().baseBold,
                  ),
                  Text(
                    videoListModeldetails[index].date,
                    style: const FigmaTextStyles().baseBold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: videoListModeldetails[index].bcolor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(videoListModeldetails[index].bimage),
                              const SizedBox(width: 5),
                              Text(videoListModeldetails[index].btext,
                                  style: const FigmaTextStyles()
                                      .smallbaseRegular
                                      .copyWith(color: Colors.white)),
                            ],
                          )),
                      Text(
                        videoListModeldetails[index].time,
                        style: const FigmaTextStyles()
                            .smallbaseRegular
                            .copyWith(color: Colors.grey[400]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.red,
                    height: size.height * 0.172,
                    width: size.width,
                    child: PlayVideo(
                      url: videoListModeldetails[index].url,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
