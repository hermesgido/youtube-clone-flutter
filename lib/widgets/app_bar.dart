import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube/widgets/category.dart';
import 'package:youtube/widgets/video_container.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        padding: EdgeInsets.only(left: 5, right: 5, top: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/yt.svg',
                      width: 25,
                      height: 30,
                    ),
                    SizedBox(width: 2),
                    const Text(
                      'YouTube',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.dashboard_customize_outlined,
                        size: 23, color: Colors.white),
                    SizedBox(width: 16),
                    Icon(Icons.notifications_active_outlined,
                        size: 23, color: Colors.white),
                    SizedBox(width: 16),
                    Icon(Icons.search, size: 23, color: Colors.white),
                    SizedBox(width: 16),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/hermes.jpg'),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 66, 65, 65),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: const Icon(
                              Icons.offline_bolt_outlined,
                              color: Colors.white,
                              size: 29,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            child: const VerticalDivider(
                              width: 20,
                              thickness: 1,
                              indent: 10,
                              endIndent: 0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5),
                          Category1(
                            catName: 'All',
                          ),
                          SizedBox(width: 5),
                          Category1(
                            catName: 'Music',
                          ),
                          SizedBox(width: 5),
                          Category1(
                            catName: 'Gaming',
                          ),
                          SizedBox(width: 5),
                          Category1(
                            catName: 'Computer',
                          ),
                          SizedBox(width: 5),
                          Category1(
                            catName: 'Live',
                          ),
                          SizedBox(width: 5),
                          Category1(
                            catName: 'Startup compny',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            VideoContainer(
              thumbnail: ('assets/images/v2.webp'),
              channelName: 'The Codeholic',
              pubDate: '9 days ago',
              videotitle:
                  'Build and Deploy React + Laravel project in 10 hours',
              viewsCount: '98.8 views',
              channelIcon: 'assets/images/channel2.jpg',
            ),
            SizedBox(height: 5),
            VideoContainer(
              channelIcon: ('assets/images/james.jpg'),
              thumbnail: ('assets/images/v1.webp'),
              channelName: 'James Jan',
              pubDate: '12 days ago',
              videotitle: 'The Stock Market & Investing: An Ultimate Guide.',
              viewsCount: '101K views',
            ),
            SizedBox(height: 5),
            VideoContainer(
              thumbnail: ('assets/images/v3.webp'),
              channelName: 'DW Documentary',
              pubDate: '1 Year ago',
              videotitle:
                  'Google, Facebook, Amazon - The rise of the mega-corporations | DW Documentary',
              viewsCount: '2M views',
              channelIcon: 'assets/images/channel3.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
