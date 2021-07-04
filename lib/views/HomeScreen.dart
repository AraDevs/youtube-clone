import 'package:flutter/material.dart';
import 'package:youtube_clone/shared/AppConstants.dart';
import 'package:youtube_clone/views/lists/HeaderActions.dart';
import 'package:youtube_clone/views/lists/VideoActions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstants.darkModeColor,
          actions: [
            IconButton(icon: Icon(Icons.email), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.notifications_none_outlined),
                onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/profile.jpg"),
              ),
            )
          ],
          title: Container(
              width: size.width * 0.2,
              child: Image.asset("assets/images/logo-white.png")),
        ),
        body: Container(
          color: AppConstants.darkModeColor,
          child: TabBarView(controller: tabController, children: [
            Container(
                child: Column(
              children: [
                SizedBox(height: 8),
                Container(height: size.height * 0.04, child: HeaderActions()),
                SizedBox(height: 8),
                Expanded(child: VideoActions())
              ],
            ))
          ]),
        ));
  }
}
