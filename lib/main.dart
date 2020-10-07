import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rgmj_cignal_loader_app/config/app.dart';
import 'package:rgmj_cignal_loader_app/models/user.dart';
import 'package:rgmj_cignal_loader_app/screens/wrapper.dart';
import 'package:rgmj_cignal_loader_app/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(primaryColor: appSecondaryColor),
        home: Wrapper(),
      ),
    );
  }
}
