import 'package:flutter/material.dart';

class ViewVideo extends StatelessWidget {
  const ViewVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset('assets/images/v1.webp'),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'The Stock Market & Investing: An Ultimate Guide.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            children: [
              Text('views', style: TextStyle(color: Colors.white)),
              Text('1 yr ago', style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  Text('42K'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  Text('42K'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  Text('42K'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  Text('42K', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text('James Jan', style: TextStyle(color: Colors.white)),
                  Text('1.56M subscribers',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text('SUBSCRIBED', style: TextStyle(color: Colors.white)),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              Divider()
            ],
          ),
        ],
      ),
    );
  }
}
