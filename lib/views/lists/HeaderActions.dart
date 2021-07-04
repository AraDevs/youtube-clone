import 'package:flutter/material.dart';
import 'package:youtube_clone/views/cards/HeaderCard.dart';

class HeaderActions extends StatefulWidget {
  @override
  _HeaderActionsState createState() => _HeaderActionsState();
}

class _HeaderActionsState extends State<HeaderActions> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getItems(),
      scrollDirection: Axis.horizontal,
    );
  }

  getItems() {
    List<Widget> items = List<Widget>.empty(growable: true);
    for (int i = 0; i <= 5; i++) {
      items.add(HeaderCard(isSelected: i == 0 ? true : false));
    }
    return items;
  }
}
