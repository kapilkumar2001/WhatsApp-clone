import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child : new Text(
          "Status",
        style: new TextStyle(fontSize: 20.0),
      ),
    );
  }
}

