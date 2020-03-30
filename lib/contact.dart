import 'package:flutter/material.dart';
void main()
{runApp(contact());
}
class contact extends StatefulWidget {
  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Contact Details'),
      ),
    );
  }
}
