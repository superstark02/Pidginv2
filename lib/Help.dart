import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3/HomePage.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            height: 70.0,
            child: AppBar(
              title: Text("Help",style: TextStyle(fontSize:20,color: Colors.white,fontFamily: 'Poppins',),),
              backgroundColor: Colors.green,
              centerTitle: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 40,),
                Text("Personal Info",style: TextStyle(fontSize: 12,color: Colors.grey,),textAlign: TextAlign.left,),
                SizedBox(height: 20,),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),
                ListTile(
                  title: Text("Profile",style: TextStyle(fontFamily: 'rest',),), trailing: Icon(Icons.person),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),

                ListTile(
                  title: Text("Payments",style: TextStyle(fontFamily: 'rest'),), trailing: Icon(Icons.payment),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),

                ListTile(
                  title: Text("Notifications",style: TextStyle(fontFamily: 'rest'),), trailing: Icon(Icons.notifications_none),
                  onTap: ()=>(null),
                ),
                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),

                ListTile(
                  title: Text("Forms Submitted",style: TextStyle(fontFamily: 'rest'),), trailing: Icon(Icons.format_align_justify),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),

                ListTile(
                  title: Text("Requests",style: TextStyle(fontFamily: 'rest'),), trailing: Icon(Icons.school),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),
                SizedBox(height: 20,),




                Text("Team Up",style: TextStyle(fontSize: 12,color: Colors.grey,),textAlign: TextAlign.left,),
                SizedBox(height: 20,),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),
                ListTile(
                  title: Text("List Your Service On App",style: TextStyle(fontFamily: 'rest',),), trailing: Icon(Icons.file_upload), subtitle: Text("(Boost Your Market)"),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),

                ListTile(
                  title: Text("Share An Experience",style: TextStyle(fontFamily: 'rest'),), trailing: Icon(Icons.feedback),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),


                SizedBox(height: 20,),
                Text("Support",style: TextStyle(fontSize: 12,color: Colors.grey,),textAlign: TextAlign.left,),
                SizedBox(height: 20,),
                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),
                ListTile(
                  title: Text("Help | Feedback",style: TextStyle(fontFamily: 'rest',),), trailing: Icon(Icons.help_outline),
                  onTap: ()=>(null),
                ),

                Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.3)),),
                SizedBox(height: 60,
                  child:  Center(
                    child: Text("© Pidgin 2020",style: TextStyle(color: Colors.grey,fontSize: 10)),
                  ) ,
                ),


              ],
            )
          )
        ],
      )
    );
  }
}
