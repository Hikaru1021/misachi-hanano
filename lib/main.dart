import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            '日常が学びに＠成績UPラボ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://scontent-nrt1-2.cdninstagram.com/v/t51.2885-19/464818382_526341986838931_9124327559466300409_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=scontent-nrt1-2.cdninstagram.com&_nc_cat=107&_nc_ohc=hF16gmmZ_xgQ7kNvgHd6z58&_nc_gid=6941687d02be417abb4b90f4953d812a&edm=APoiHPcBAAAA&ccb=7-5&oh=00_AYBPCnW2TOj2yLuHgpwLbosOxHfCRmZizp0HI5wOMp6Qxg&oe=6798CDAD&_nc_sid=22de04',
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('日常を学びに@成績UPラボ'),
                  SizedBox(width: 8),
                  Text('2025/02/01'),
                ],
              ),
              SizedBox(height: 4),
              Text('最高でした'),
              Row(
                // ボタンをまとめて横並びにする
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO: Add share functionality here.
                    },
                    icon: Icon(Icons.share),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.comment),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
