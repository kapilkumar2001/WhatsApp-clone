import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatefulWidget {
  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  @override
  Widget build(BuildContext context) {
    
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text( backgroundColor: Colors.purple, title: 'Hi',),
      StoryItem.pageImage(url: "https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg", controller: controller),
      StoryItem.pageImage(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png", controller: controller)
    ];
    return Material(
      child: StoryView(
          storyItems: storyItems,
          controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}

