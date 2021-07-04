import 'package:flutter/material.dart';

class VideoCard extends StatefulWidget {
  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Image.asset("assets/images/thumbnail.jpg"),
          SizedBox(height: size.height*0.005,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: size.width * 0.1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/images/profile.jpg"),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: size.width * 0.85,
                    child: Text(
                      "One Piece: Stampede Exclusive Official Trailer - English Subtitles",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: size.height*0.005,),
                  Container(
                    width: size.width * 0.85,
                    child: Text(
                      "Oscar Argueta . 888,299 vistas . hace 2 años",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
