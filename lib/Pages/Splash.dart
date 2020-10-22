import 'dart:async';

import 'package:flutter/material.dart';
//import 'Login.dart' as Login;

class SplashScreen extends StatefulWidget {

  @override
  State createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State {

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future loadData() async {
    return new Timer(Duration(seconds: 1), onDoneLoading);
  }

  onDoneLoading() async {
    print (333);
//    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login.Login()));
    Navigator.of(context).pushNamed('/Login');

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children:<Widget>[
          CircularProgressIndicator(

            valueColor: AlwaysStoppedAnimation(Colors.black)

          ),

        ]
      ),
        backgroundColor: Color(0xff1AA1FF),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child:  new  Image.asset('./img/Splash.png',width: 250) ,
            ),
//            new  Image.asset('./img/Splash.png',width: 200),
          ],
        )
    );
  }
}
