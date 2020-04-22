import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageContentCategories extends StatefulWidget {
  @override
  _ImageContentCategoriesState createState() => _ImageContentCategoriesState();
}

class _ImageContentCategoriesState extends State<ImageContentCategories> {
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
            margin: EdgeInsets.only(right:2,left: 20),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2Fclasses_section%2Fart.png?alt=media&token=fa1dfae2-497a-41aa-a5af-4cea6ed8a667"),
          ),
          Container(
            width: 100.0,
            margin: EdgeInsets.symmetric(horizontal:2),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2Fclasses_section%2Fclassical.png?alt=media&token=07d9fb84-55db-4e41-b2b7-a38084963c85"),
          ),
          Container(
            width: 100.0,
            margin: EdgeInsets.symmetric(horizontal:2),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2Fclasses_section%2Fdance.png?alt=media&token=b6d46c67-dfbe-4054-81d6-4d474356dc27"),
          ),
          Container(
            width: 100.0,
            margin: EdgeInsets.symmetric(horizontal:2),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2Fclasses_section%2Fmusic_c.png?alt=media&token=750ca854-b905-4183-be78-d4c123bd0d2d"),
          ),
          Container(
            width: 100.0,
            margin: EdgeInsets.symmetric(horizontal:2),
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2Fclasses_section%2Ftition.png?alt=media&token=285edb04-fd7d-4816-bb00-76f6cf316936"),
          ),
        ],
      ),
    );
  }
}
