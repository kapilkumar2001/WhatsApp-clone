import 'package:flutter/material.dart';
import 'package:whatsapp/models/chatmodel.dart';


class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {

    // return Center(
    //   child: new Text("Chats"),
    // );

    return ListView.builder(
      itemCount: dummyData.length,
        itemBuilder: (context,index)=> new Column(
          children: [
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(dummyData[index].avatarUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    dummyData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    dummyData[index].time,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  dummyData[index].message,
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        ),
    );
  }
}

