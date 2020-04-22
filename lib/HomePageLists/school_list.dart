import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SchoolList extends StatefulWidget {
  @override
  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {

  Future getPosts() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("Schools").getDocuments();
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
                  SizedBox(height: 200),
                  Text("Loading...",style: TextStyle(color: Colors.grey),),
                ],
              ),
            );
          }
          else{
            return Row(
                children: <Widget>[
                  Expanded(
                    child: new ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (_,index){
                          return Column(
                            children: <Widget>[
                              ListTile(
                              onTap: ()=>null,
                                title: Text(snapshot.data[index].data["name"],style: TextStyle(fontFamily: 'Rest'),),
                                subtitle: Text(snapshot.data[index].data["classes"]),
                                leading: Container(
                                  child: Image.network(snapshot.data[index].data["image"],fit: BoxFit.contain,),
                          ),
                          )
                            ],
                          );
                        }),
                  )
                ],
            );
          }
        },),
    );
  }
}