import 'package:flutter/material.dart';
import 'package:youtube_clone/shared/AppConstants.dart';

class HeaderCard extends StatefulWidget {
  final bool isSelected;
  HeaderCard({@required this.isSelected});
  @override
  _HeaderCardState createState() => _HeaderCardState();
}

class _HeaderCardState extends State<HeaderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected? Colors.white : AppConstants.darkOptionColor,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text("Example",  style: TextStyle(color: widget.isSelected ? Colors.black : Colors.white),),
        ),
      ),
    );
  }
}
