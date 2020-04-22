import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopPicks extends StatefulWidget {
  @override
  _TopPicksState createState() => _TopPicksState();
}

class _TopPicksState extends State<TopPicks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100.0,
            margin: EdgeInsets.only(right:5,left: 10),
            child: Card(
              elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              child: Center(child:Text("Image") ,),
            )
          ),
          Container(
              width: 100.0,
              margin: EdgeInsets.only(right:5),
              child: Card(
                elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                child: Center(child:Text("Image") ,),
              )
          ),
          Container(
              width: 100.0,
              margin: EdgeInsets.only(right:5),
              child: Card(
                elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                child: Center(child:Text("Image") ,),
              )
          ),
          Container(
              width: 100.0,
              margin: EdgeInsets.only(right:5),
              child: Card(
                elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                child: Center(child:Text("Image") ,),
              )
          ),
          Container(
              width: 100.0,
              margin: EdgeInsets.only(right:5),
              child: Card(
                elevation: 1, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                child: Center(child:Text("Image") ,),
              )
          ),
        ],
      ),
    );
  }
}
