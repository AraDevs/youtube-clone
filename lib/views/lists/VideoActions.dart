import 'package:flutter/material.dart';
import 'package:youtube_clone/views/cards/VideoCard.dart';

class VideoActions extends StatefulWidget {
  @override
  _VideoActionsState createState() => _VideoActionsState();
}

class _VideoActionsState extends State<VideoActions> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getItems(),
      shrinkWrap: true,
    );
  }

  getItems() {
    List<Widget> items = List<Widget>.empty(growable: true);
    for (int i = 0; i <= 5; i++) {
      items.add(VideoCard());
    }
    return items;
  }
}
