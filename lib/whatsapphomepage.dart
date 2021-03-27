import 'package:flutter/material.dart';
import 'package:whatsapp/pages/callspage.dart';
import 'package:whatsapp/pages/camerapage.dart';
import 'package:whatsapp/pages/chatspage.dart';
import 'package:whatsapp/pages/statuspage.dart';

class WhatsAppPage extends StatefulWidget {
  var cameras;
  WhatsAppPage(this.cameras);

  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> with SingleTickerProviderStateMixin{

  TabController _tabController;
  bool showfab = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);
    _tabController.addListener(() {
      if(_tabController.index==1)
        showfab=true;
      else
        showfab=false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
               new Tab(icon: new Icon(Icons.camera_alt),),
               new Tab(text: "CHATS",),
              new Tab(text: "STATUS",),
              new Tab(text: "CALLS",),
            ],
        ),
        actions: [
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
          children: <Widget>[
            new CameraPage(widget.cameras),
            new ChatsPage(),
            new StatusPage(),
            new CallsPage(),
          ],
      ),
      floatingActionButton: showfab? new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.message, color: Colors.white,),
          onPressed: ()=>{},
      ):null,
    );
  }
}
