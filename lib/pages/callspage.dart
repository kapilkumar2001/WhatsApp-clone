import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child : new Text(
          "Calls",
        style: new TextStyle(fontSize: 20.0),
      ),
    );
  }
}

