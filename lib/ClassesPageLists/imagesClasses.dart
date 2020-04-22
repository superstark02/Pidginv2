import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageContentClasses extends StatefulWidget {
  @override
  _ImageContentClassesState createState() => _ImageContentClassesState();
}

class _ImageContentClassesState extends State<ImageContentClasses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      height: 300.0,
      child: Container(
            width: 400,
            margin: EdgeInsets.symmetric(horizontal:0),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2Fclasses_section%2Fhobby.jpg?alt=media&token=bc24b5be-82c7-45f5-8ef9-8b655051207b"),
          ),

    );
  }
}
