import 'package:flutter/material.dart';
import 'package:splashscreen/main.dart';
import 'package:splashscreen/mainhome.dart';
import 'package:splashscreen/events.dart';
import 'package:splashscreen/sponsors.dart';
import 'package:splashscreen/contact.dart';
void main()
{
  runApp(Home());
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex=0;
  final tabs=[
    Center(
      child: About(),
    ),
    Center(
      child: sponsor(),
    ),
    Center(
      child: Events(),
    ),
    Center(
      child: contact(),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Splashscreen') ,),
        body:SafeArea(child: tabs[_currentindex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex:_currentindex ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Ehome'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('EVENTS'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Sponsors'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            title: Text('contact'),
          ),

        ],
        onTap: (index)
          {setState(() {
            _currentindex=index;
          });
          },
      ),
    ),);
  }
}
