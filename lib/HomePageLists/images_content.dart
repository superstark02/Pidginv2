import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageContent extends StatefulWidget {
  @override
  _ImageContentState createState() => _ImageContentState();
}

class _ImageContentState extends State<ImageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      height: 300.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 400,
            margin: EdgeInsets.only(right: 10,left: 15),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2FhScroll%2FConvenient.png?alt=media&token=8db57dcf-c1ff-4937-a78f-8c804ae3166e"),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.only(right: 10),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2FhScroll%2Fclasses.jpg.png?alt=media&token=e33a3247-c2af-4d63-88de-8749a1e80389"),
          ),

        ],
      ),
    );
  }
}
