import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/pages/storyview.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://tleliteracy.com/wp-content/uploads/2017/02/default-avatar.png"),
                    ),
                    Positioned(
                      bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ),
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status updates"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/56160115?s=460&u=4a626eb49996e3d35774ca1d23de92017b537ca6&v=4"),
                          ),
                      title: Text(
                        "Kapil",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Today, 14:59 PM"),
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> StoryPageView(),
                      )),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://avatars3.githubusercontent.com/u/56160052?s=460&u=0706f7fc6b6ce42ac3dd2aeee06a1b46c79de01d&v=4"),
                      ),
                      title: Text(
                        "Arunoday",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Today, 14:59 PM"),
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> StoryPageView(),
                      )),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://static.statusqueen.in/dpimages/thumbnail/No_DP_Image_for_whatsapp-1500.jpg"),
                      ),
                      title: Text(
                        "Saini",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Today, 14:59 PM"),
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> StoryPageView(),
                      )),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1272055844318793728/6Af9LWUg.jpg"),
                      ),
                      title: Text(
                        "Nirala",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Today, 14:59 PM"),
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> StoryPageView(),
                      )),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://image.winudf.com/v2/image/Y29tLmNoaW50dS5pbWFnZV9zY3JlZW5zaG90c18wXzFmZTYxNzI3/screen-0.jpg?fakeurl=1&type=.jpg"),
                      ),
                      title: Text(
                        "Chintu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Today, 14:59 PM"),
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> StoryPageView(),
                      )),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );



    // return Center(
    //   child : new Text(
    //       "Status",
    //     style: new TextStyle(fontSize: 20.0),
    //   ),
    // );
  }
}

