import 'package:avocado/pages/youtube_video/youtube_video_loader.dart';
import 'package:flutter/material.dart';

import '../../helper/color_constants.dart';
import '../../model/video_list_model.dart';

class YoutubeVideoDetails extends StatefulWidget {
  const YoutubeVideoDetails({required this.dataDetails, super.key});
  final VideoListModel dataDetails;

  @override
  State<YoutubeVideoDetails> createState() => _YoutubeVideoDetailsState();
}

class _YoutubeVideoDetailsState extends State<YoutubeVideoDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FigmaColors.primaryColor,
        title: const Text("Post"),
        centerTitle: true,
        actions: const [
          Icon(Icons.favorite),
          SizedBox(width: 10),
          Icon(Icons.share),
          SizedBox(width: 10)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.3,
            child: PlayVideo(url: widget.dataDetails.url),
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: widget.dataDetails.bcolor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(widget.dataDetails.bimage),
                            const SizedBox(width: 5),
                            Text(widget.dataDetails.btext,
                                style: const FigmaTextStyles()
                                    .smallbaseRegular
                                    .copyWith(color: Colors.white)),
                          ],
                        )),
                    Text(
                      widget.dataDetails.time,
                      style: const FigmaTextStyles()
                          .smallbaseRegular
                          .copyWith(color: Colors.grey[400]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.dataDetails.title,
                  style: const FigmaTextStyles().baseBold,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.dataDetails.date,
                  style: const FigmaTextStyles().baseBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "2,401 views  Aug 11, 2022  #ntvnews #ntvplus #nepal #nabinkrishi #krishiprabidhi #krishinepal #nepalkrishi #krishi #ntvkrishi  #ntvplus #ntvnews #nepaltelevision #nepalSubscribe to our YouTube Channel and get daily program updates of NTV, NTV PLUS, and NTV NEWS.STAY TUNED FOR MORE UPCOMING PROGRAMS FROM NEPAL TELEVISION !!!Nepal Television HD को सबै Channel (NTV News, NTV Khohalpur, NTV Plus)को सम्पूर्ण कार्यक्रम Youtube मा समयमै हेर्न र कार्यक्रम बारे जानकारी प्राप्त गर्न हामीलाई Youtube मा subscribe गर्नुहोस:नेपाल टेलिभिजनको App Download गर्नुहोस साथै हामीलाई Facebook, Instagram मा Follow गर्न पनी नभुल्नु होला  ।  Mobile App: http://bit.ly/nepaltelevision​ Online Website: https://nepaltvonline.com/​ Website: http://ntv.org.np/​ Facebook: https://www.facebook.com/neptv2041/​ Instagram: https://www.instagram.com/nepaltelevi... (NTV. Digital Platform is Managed by NEW IT VENTURE CORPORATION www.newitventure.com)"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
