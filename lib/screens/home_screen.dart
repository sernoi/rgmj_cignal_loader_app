import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:rgmj_cignal_loader_app/config/app.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              label: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ))
        ],
        title: Text("Loader App"),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: ConvexAppBar(
        color: appPrimaryColor,
        backgroundColor: Colors.white,
        activeColor: appPrimaryColor,
        controller: _tabController,
        elevation: 1,
        items: [
          TabItem(
            icon: SimpleLineIcons.pie_chart,
          ),
          TabItem(
            icon: SimpleLineIcons.user,
          ),
          TabItem(
            icon: SimpleLineIcons.screen_smartphone,
          ),
          TabItem(
            icon: SimpleLineIcons.notebook,
          ),
          TabItem(icon: SimpleLineIcons.info),
        ],
        initialActiveIndex: 2,
        //optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
      // body: TabBarView(controller: _tabController, children: [
      //
      // ]
      // )
    );
  }
}
