import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_framework_workshop/home/home.dart';
import 'package:story_view/story_view.dart';

import '../Models/Person.dart';

class Photo extends StatefulWidget {
  const Photo({super.key, required this.someone, required this.controller});
  final Person someone;
  final PageController controller;

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  late StoryController controller;
  final storyItems = <StoryItem>[];

  void addStoryItems() {
    storyItems.add(StoryItem.pageImage(
        url: widget.someone.photoUrl,
        caption: widget.someone.description,
        controller: controller,
        duration: Duration(milliseconds: 3000)));
  }

  @override
  void initState() {
    super.initState();
    controller = StoryController();
    addStoryItems();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void handleCompleted() {
    Navigator.of(context).push((MaterialPageRoute(
      builder: (context) => MainPage(),
    )));
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Material(
            type: MaterialType.transparency,
            child: StoryView(
              onVerticalSwipeComplete: (direction) {},
              storyItems: storyItems,
              controller: controller,
              onComplete: handleCompleted,
            ),
          ),
        ],
      );
}
