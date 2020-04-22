import 'package:flutter/material.dart';

class OffersImage extends StatefulWidget {
  @override
  _OffersImageState createState() => _OffersImageState();
}

class _OffersImageState extends State<OffersImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 300.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal:15.0),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2FhScroll%2FConvenient.png?alt=media&token=b2bb0b92-e189-4f8d-89bf-3b4608c92f78"),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal:15.0),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2FhScroll%2Fhobby.jpg?alt=media&token=2c35a7e4-448c-4b0a-9030-6b4310b2ab88"),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal:15.0),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2FhScroll%2Foptions.jpg?alt=media&token=e9bdbd0a-d099-4f5b-aea7-5df33b28409c",fit: BoxFit.contain,),
          ),
        ],
      ),
    );
  }
}
