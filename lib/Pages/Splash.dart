import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitlednew2_6/Server/auth_services.dart';
import 'package:connectivity/connectivity.dart';



import 'Login.dart';
//import 'Login.dart' as Login;

class SplashScreen extends StatefulWidget {

  @override
  State createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future loadData() async {


    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {

    checkLogin();

//    print (333);
//    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
//    Navigator.of(context).pushNamed('/Login');

  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        key: _scaffoldKey,

        bottomNavigationBar: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children:<Widget>[
//          CircularProgressIndicator(
//            valueColor: AlwaysStoppedAnimation(Colors.black)
//          ),

        ]
      ),
        backgroundColor: Color(0xff1AA1FF),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child:  new  Image.asset('./img/Splash2.jpeg',width: 250) ,
            ),
//            new  Image.asset('./img/Splash.png',width: 200),
          ],
        )
    );
  }

  checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String apiToken = prefs.getString('user.api_token');

//    if(apiToken == null) navigationToLogin();

   bool CheckCon =  await checkConnectionInternet();

    if(CheckCon == true) {
      // check api Token
      await AuthService.checkApiToken(apiToken)
          ?Navigator.pushReplacementNamed(context, '/Home')
          :Navigator.pushReplacementNamed(context, '/Login');
    } else {
      _scaffoldKey.currentState.showSnackBar(
          new SnackBar(
            backgroundColor: Colors.transparent,
              elevation: 8,
               duration: new Duration(hours: 2),
              content: new GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState.hideCurrentSnackBar();
                  checkLogin();
                },
                child:
                CupertinoAlertDialog(

                  title: Text('شما به اینترنت متصل نیستید!',textDirection: TextDirection.rtl,style: TextStyle(fontFamily: 'vazir',),),
                  content: Text('لطفاً پس از اتصال به اینترنت دوباره تلاش کنید'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('تلاش مجدد'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/splash');

                      },
                    ),
//            CupertinoDialogAction(
//              child: Text('Allow'),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
                  ],
                )
              )
          ),
      );


    }

  }

  Future<bool> checkConnectionInternet() async {
    var connectivityResult = await (new Connectivity().checkConnectivity());

    print (connectivityResult);
    return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
  }
}
