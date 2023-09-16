import 'package:avocado/helper/color_constants.dart';
import 'package:flutter/material.dart';

class VideoListModel {
  VideoListModel(
      {required this.btext,
      required this.bimage,
      required this.bcolor,
      required this.time,
      required this.title,
      required this.date,
      required this.url});

  final String title;
  final String date;
  final String time;
  final String url;
  final String btext;
  final String bimage;
  final Color bcolor;
}

List<VideoListModel> videoListModeldetails = [
  VideoListModel(
      bimage: "assets/y.png",
      bcolor: FigmaColors.youtubeColor,
      btext: "YouTube",
      title: "NABIN KRISHI PRABIDHI || Nepal Television",
      date: "2079-04-23",
      time: "1 hour ago",
      url: "https://www.youtube.com/watch?v=Pmg2PtMwhgs&ab_channel=NTVPLUS"),
  VideoListModel(
      bimage: "assets/fb.png",
      bcolor: FigmaColors.fbColor,
      btext: "Facebook",
      title: "NABIN KRISHI PRABIDHI || Nepal Television",
      time: "1 hour ago",
      date: "2079-04-24",
      url: "https://www.youtube.com/watch?v=Pmg2PtMwhgs&ab_channel=NTVPLUS"),
  VideoListModel(
      bimage: "assets/ab.png",
      bcolor: FigmaColors.primaryColor,
      btext: "ABC News",
      title: "NABIN KRISHI PRABIDHI || Nepal Television",
      time: "1 hour ago",
      date: "2079-04-23",
      url: "https://www.youtube.com/watch?v=Pmg2PtMwhgs&ab_channel=NTVPLUS"),
  VideoListModel(
      bimage: "assets/tn.png",
      bcolor: FigmaColors.topnewsColor,
      btext: "TOP NEWS",
      title: "NABIN KRISHI PRABIDHI || Nepal Television",
      time: "1 hour ago",
      date: "2079-04-27",
      url: "https://www.youtube.com/watch?v=Pmg2PtMwhgs&ab_channel=NTVPLUS"),
  VideoListModel(
      bimage: "assets/y.png",
      bcolor: FigmaColors.youtubeColor,
      btext: "YouTube",
      title: "NABIN KRISHI PRABIDHI || Nepal Television",
      time: "1 hour ago",
      date: "2079-04-23",
      url: "https://www.youtube.com/watch?v=Pmg2PtMwhgs&ab_channel=NTVPLUS"),
];
