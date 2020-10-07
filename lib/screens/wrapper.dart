import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rgmj_cignal_loader_app/models/user.dart';
import 'package:rgmj_cignal_loader_app/screens/authenticate.dart';
import 'package:rgmj_cignal_loader_app/screens/home_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if(user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
