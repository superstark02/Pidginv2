import 'package:flutter/material.dart';
import 'package:flutterapp3/HomePage.dart';
import 'package:flutterapp3/Classes.dart';
import 'Help.dart';

void main(){
  runApp(new Pidgin());
}

class Pidgin extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Pidgin",
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: bottomNavigationBar()
    );
  }
}

class bottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int _currentIndex = 0;

  void onTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  final List<Widget> _fragments = [HomePage(),Classes(),Help()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _fragments[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
         type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title:Text("Home"),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.school), title:Text("Classes"),backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.help_outline), title:Text("Help"),backgroundColor: Colors.green),
        ],
      ),
    );
  }
}



