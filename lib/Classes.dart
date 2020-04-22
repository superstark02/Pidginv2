import 'package:flutter/material.dart';
import 'package:flutterapp3/ClassesPageLists/classes_list.dart';
import 'package:flutterapp3/ClassesPageLists/imageClassesCategories.dart';
import 'package:flutterapp3/ClassesPageLists/imagesClasses.dart';
import 'package:flutterapp3/ClassesPageLists/topPicks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

 class Classes extends StatefulWidget {
   @override
   _ClassesState createState() => _ClassesState();
 }
 
 class _ClassesState extends State<Classes> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Classes"), centerTitle: true,
         elevation: 0,
         backgroundColor: Colors.orange,
       ),
       body: SingleChildScrollView(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Container(
               color: Colors.orange, child:  SearchWidget(),
             ),
              ImageContentClasses(),
             Row(
               mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(left: 20.0,bottom: 10),
                   child: Row(
                     children: <Widget>[Icon(Icons.offline_bolt,color: Colors.orange,),Text(" Trending...",style: TextStyle(color: Colors.grey,fontSize: 18),textAlign: TextAlign.left,),],
                   )
                 ),
               ],
             ),
             Container(margin: EdgeInsets.symmetric(horizontal: 20), decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.1)),),
             ImageContentCategories(),
             Row(
               mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Container(
                     margin: EdgeInsets.only(left: 20.0,bottom: 10,top: 40),
                     child: Row(
                       children: <Widget>[Icon(Icons.stars,color: Colors.orange,),Text(" Top Picks...",style: TextStyle(color: Colors.grey,fontSize: 18),textAlign: TextAlign.left,),],
                     )
                 ),
               ],
             ),
             Container(margin: EdgeInsets.symmetric(horizontal: 20), decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.1)),),
             TopPicks(),
             Container(margin: EdgeInsets.symmetric(horizontal: 20), decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.1)),),
             ClassesList(),
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
                       border: InputBorder.none, hintText: "Search Classes..."),
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
