import 'package:flutter/material.dart';

import '../screens/view_video.dart';

class VideoContainer extends StatelessWidget {
  VideoContainer({
    super.key,
    required this.channelName,
    required this.pubDate,
    required this.thumbnail,
    required this.videotitle,
    required this.viewsCount,
    required this.channelIcon,
  });
  String videotitle;
  String channelName;
  String viewsCount;
  String pubDate;
  String thumbnail;
  String channelIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ViewVideo(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Image.asset(thumbnail),
            Container(
              padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(channelIcon),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 280),
                        child: Text(
                          videotitle,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            channelName,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 118, 117, 117)),
                          ),
                          SizedBox(width: 6),
                          Text(
                            viewsCount,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 118, 117, 117)),
                          ),
                          SizedBox(width: 6),
                          Text(
                            pubDate,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 118, 117, 117)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
