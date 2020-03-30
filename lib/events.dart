import 'package:flutter/material.dart';
void main()
{
  runApp(Events());
}
class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
        child: Text('Enents details'),
    ),);
  }
}
