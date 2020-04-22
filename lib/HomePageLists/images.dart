import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesHome extends StatefulWidget {
  @override
  _ImagesHomeState createState() => _ImagesHomeState();
}

class _ImagesHomeState extends State<ImagesHome> {

  Future getPosts() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("Images").getDocuments();
    return qn.documents;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getPosts(),
        builder: (_,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: Column(
                children: <Widget>[
                  Text("Loading...",style: TextStyle(color: Colors.grey),),
                ],
              ),
            );
          }
          else{
            return Container(
              height: 300,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_,index){
                    return Container(
                      width: 400,
                      margin: EdgeInsets.only(right: 10,left: 15),
                      child: Image.network(snapshot.data[index].data["image"]),
                    );
                  }
              ),
            );
          }
        },
      ),
    );
  }
}
