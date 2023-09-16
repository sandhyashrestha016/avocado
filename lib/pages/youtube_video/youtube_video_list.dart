import 'package:flutter/material.dart';

import '../../helper/color_constants.dart';
import 'video_list_data_page.dart';

class YoutubeVideoList extends StatefulWidget {
  const YoutubeVideoList({super.key});

  @override
  State<YoutubeVideoList> createState() => _YoutubeVideoListState();
}

class _YoutubeVideoListState extends State<YoutubeVideoList>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FigmaColors.primaryColor,
        title: const Text("Video"),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.share),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        children: [
          TabBar(
            labelPadding: const EdgeInsets.all(0),
            controller: _tabController,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            indicatorColor: FigmaColors.primaryColor,
            tabs: const [
              Tab(text: "Trending"),
              Tab(text: "Trending Features"),
              Tab(text: "Trending"),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                VideoListDataPage(),
                Center(
                  child: Text("No Data"),
                ),
                Center(
                  child: Text("No Data"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
