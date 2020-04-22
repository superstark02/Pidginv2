import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3/HomePageLists/images.dart';
import 'package:flutterapp3/HomePageLists/images_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomePageLists/school_list.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
       title: Text("Username"), centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.blue, child:  SearchWidget(),
            ),
            CommonFormButton(),
            ImagesHome(),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 20),
             child:  RaisedButton(
               child: SizedBox(
                 width: double.maxFinite,
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),child: Text("Show Selected Schools",textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),)
               ),
               color: Colors.blue,
               textColor: Colors.white,
               onPressed: ()=>{},
             ),
           ),
            Row(
              mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20.0),
                  child: Text("Select Schools",style: TextStyle(color: Colors.grey,fontSize: 14),textAlign: TextAlign.left,),
                ),
              ],
            ),
            Container(margin: EdgeInsets.symmetric(horizontal: 20), decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.1)),),
            SchoolList()
          ],
        ),
      )
    );
  }
}

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Search Schools..."),
                  onSubmitted: (String place) {
                    if (place.isNotEmpty) {
                    }
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute());
                },
                child: Icon(
                  FontAwesomeIcons.slidersH,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonFormButton extends StatefulWidget {
  @override
  _CommonFormButtonState createState() => _CommonFormButtonState();
}

class _CommonFormButtonState extends State<CommonFormButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,top: 10,right: 20),
      child: SizedBox(
        width: double.maxFinite,
        child: Image.network("https://firebasestorage.googleapis.com/v0/b/pidgin-ds.appspot.com/o/app_resources%2FhScroll%2FcommonForm.png?alt=media&token=1d2c358b-5134-43c9-b8d8-052081bdd01a",),
      ),
    );
  }
}
