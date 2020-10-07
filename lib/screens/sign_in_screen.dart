import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:rgmj_cignal_loader_app/config/app.dart';
import 'package:rgmj_cignal_loader_app/services/auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _auth = AuthService();
  TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [appPrimaryColor, Colors.red[200]])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color(0x00000000),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                            image:
                                AssetImage('assets/images/rgmj_portrait.png'),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color(0x00000000),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                                image: AssetImage(
                                    'assets/images/cignalandsat.png'),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Loading App",
                          style: TextStyle(
                              color: Color(0xFF02213E),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 20,
                                    offset: Offset(0, 20))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: Icon(SimpleLineIcons.user),
                                      hintText: "Username",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      icon: Icon(SimpleLineIcons.lock),
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        RichText(
                          text: TextSpan(
                            style: defaultStyle,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Forgot Password? ',
                                  style:
                                      TextStyle(color: Colors.redAccent[100]),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => print('click')),
                              TextSpan(text: "Create an "),
                              TextSpan(
                                  text: "account",
                                  style: TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => print('click')),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: appPrimaryColor),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        SizedBox(height: 30),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  onPressed: () {},
                                  color: Colors.green,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        SimpleLineIcons.social_google,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        " Login",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  onPressed: () {},
                                  color: Colors.blue,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        SimpleLineIcons.social_facebook,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Login",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  onPressed: () async {
                                    dynamic result = await _auth.signInAnon();
                                    if (result == null) {
                                      print("Error Signing In");
                                    } else {
                                      print("Signed In");
                                      print(result.uid);
                                    }
                                  },
                                  color: Colors.pink,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Octicons.smiley,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        " As Guest",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
