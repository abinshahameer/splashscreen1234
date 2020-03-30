import 'package:flutter/material.dart';
void main()
{
  runApp(About());
}
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: Column(
          children: <Widget>[
             Center(
              child: Container(
                child: FlutterLogo(size: 300,),
              ),
            ),
            GestureDetector(
              onTap: () {print('hello');},
              child: Card(
                elevation: 10,
                color: Colors.white10,
                child: FlutterLogo(size: 150,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
