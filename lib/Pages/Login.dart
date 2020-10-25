import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitlednew2_6/Server/Getdata.dart';
import 'package:untitlednew2_6/Server/auth_services.dart';
import 'package:validators/validators.dart';



//import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitlednew2_6/Pages/Home.dart';

import 'Forgetpass.dart';

//import 'package:untitlednew2_6/Pages/Home.dart';


class Login extends StatefulWidget  {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>  {



  String _emailValue;
  String _passwordValue;
  final _formKey = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();


  emailOnSaved(String value) {
    _emailValue = value;
  }

  passwordOnSaved(String value) {
    _passwordValue = value;
  }




//  print(futureAlbum)

  @override



  Widget build(BuildContext context) {

        return Scaffold(
            key: _scaffoldKey,

            backgroundColor: Colors.white,
            body:
            new ListView(
//                    margin: const EdgeInsets.only(top: 52),
              children: <Widget>[

                Center(
                  child:
                    Form(
                      key : _formKey,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
//                      SizedBox(height: 40),
//                      new Image.asset('./img/Splash2.jpeg', width: 150),
                          Stack(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              ClipPath(
                                clipper: WaveClipper2(),
                                child: Container(
                                  child: Column(),
                                  width: double.infinity,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
//                          colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
                                          colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),

//                    colors: [Color(0xFF9Dd95F), Color(0x22fe494d)])),
                                ),
                              ),
                              ClipPath(
                                clipper: WaveClipper3(),
                                child: Container(
                                  child: Column(),
                                  width: double.infinity,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
                                ),
                              ),
                              ClipPath(
                                clipper: WaveClipper1(),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
//                      Icon(
//                        Icons.fastfood,
//                        color: Colors.white,
//                        size: 60,
//                      ),
                                      new Image.asset('./img/Splash2.jpeg', width: 150),

                                      SizedBox(
                                        height: 20,
                                      ),
//                      Text(
//                        "Taste Me",
//                        style: TextStyle(
//                            color: Colors.white,
//                            fontWeight: FontWeight.w700,
//                            fontSize: 30),
//                      ),
                                    ],
                                  ),
                                  width: double.infinity,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [Color(0xffFD8D00), Color(0xFFFD6000)])),
                                ),
                              ),
                            ],
                          ),
//                      SizedBox(height: 30),
                          new MyInput(
                            'کد ملی',
                            emailOnSaved,
                          ),
                          MyInput2('رمز ورود',
                              passwordOnSaved
                          ),
                          SizedBox(height: 20),
//                      LButton(),
                          Center(
//                          padding: EdgeInsets.symmetric(horizontal: 50),
                              child: Container(
//                            alignment: Alignment.center,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    color: Color(0xFFFD6008)),
                                child: FlatButton(
                                  padding: EdgeInsets.only(left: 50,right: 50,bottom: 5,top: 5),


                                  child: Text(
                                    "ورد به برنامه",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),textDirection: TextDirection.rtl,
                                  ),
                                  onPressed: () {
                                    if(_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      sendDataForLogin();
                                    }
//                                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
                                  },
                                ),
                              )),
                          SizedBox(height: 10,),
                          GestureDetector (
                            onTap: (){
                              Navigator.push(context, new MaterialPageRoute(builder: (context) => new Forgetpass()));
                            },
                            child:Center(
                              child: Text("رمز ورود خود را فرامشو کردید؟", style: TextStyle(color:Colors.red,fontSize: 14, decoration: TextDecoration.underline  ,fontWeight: FontWeight.w700),textDirection: TextDirection.rtl),
                            ),

                          ),
                          SizedBox(height: 10,),
                          MyStatelessWidget1(),


                        ],
                      ),

                    )
                )
              ],
            )
        );
  }
  sendDataForLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    print(prefs.getString('user.api_token'));



//    await _loginButtonController.animateTo(0.150);
    Map response = await (new AuthService()).sendDataToLogin({ "email" : _emailValue  , "password" : _passwordValue });
//    Map response = await (new AuthService()).sendDataToLogin({ "email" : 'ssss'  , "password" : 'ss' });
    print(response['status']);

    if( response['status'] == 'success' ) {
      print('OK');
      await storeUserData(response['data']);
//      Navigator.pushReplacementNamed(context, '/Home');
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));

      _scaffoldKey.currentState.showSnackBar(
          new SnackBar(
              content: new Text(
                  response['status'] ,
                style: new TextStyle(fontFamily: 'Vazir'),
              )
          )
      );
      //
//      await _loginButtonController.forward();
//      Navigator.pushReplacementNamed(context, "/");
    } else {
      print('NotOk');
//      print(response);
//      await _loginButtonController.reverse();
      _scaffoldKey.currentState.showSnackBar(
          new SnackBar(
              content: new Text(
//                response['data']['email'],
                  response['status'],
                style: new TextStyle(fontFamily: 'Vazir'),
              )
          )
      );
    }
  }


  storeUserData(Map userData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user.api_token', userData['api_token']);
    await prefs.setInt('user.user_id', userData['user_id']);
  }
}

class MyInput extends StatelessWidget {
  final emailOnSaved;

  final String hint;

  MyInput(this.hint,this.emailOnSaved);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Container(
//      width: 1,

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black),
        ),
      ),
      width: width * 0.85,
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.lightBlueAccent),
        child: Directionality(
          textDirection: TextDirection.rtl,

          child: TextFormField(
            onSaved : emailOnSaved,
            keyboardType: TextInputType.number,
            textDirection: TextDirection.rtl,
            controller: null,
            autofocus: false,
            // ignore: missing_return
//            validator: (String value) {
//              if(! isNumeric(value) || !isLength(value,10,10)) {
//                return 'لطفاً کد ملی را صحیح وارد کنید!';
//                return 'کد ملی درست نیست';
//              }
//            },

            style: TextStyle(fontSize: 18.0, color: Color(0xFF456173)),
            decoration: new InputDecoration(
                icon: Icon(Icons.person),
                fillColor: Colors.transparent,
                filled: true,
                hintText: '3040000000',
                labelText: hint,
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 18.0),
                focusedBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.transparent,),
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.transparent)
                )
            ),
          ),
        ),
      ),
    );
  }
}

class MyInput2 extends StatelessWidget {

  final passwordOnSaved;

  final String hint;

  MyInput2(this.hint,this.passwordOnSaved);



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Container(
//      width: 1,


      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black),
        ),
      ),
      width: width * 0.85,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.blue),
        child: Directionality(
          textDirection: TextDirection.rtl,

          child: TextFormField(
            onSaved : passwordOnSaved,

            keyboardType: TextInputType.number,
            textDirection: TextDirection.rtl,
            controller: null,
            autofocus: false,
            // ignore: missing_return
            validator: (String value) {
              if(! isNumeric(value) || !isLength(value,3,10)) {
                return 'لطفاً رمز ورو را صحیح وارد کنید!';
                return 'کد ملی درست نیست';
              }
            },


            style: TextStyle(fontSize: 18.0, color: Color(0xFF456173)),
            decoration: new InputDecoration(

                icon: Icon(Icons.vpn_key),

                fillColor: Colors.transparent,
                filled: true,
                hintText: '12345',
                labelText: hint,
                hintStyle: TextStyle(color: Color(0xFF707070), fontSize: 18.0),
                focusedBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.transparent,),
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.transparent)
                )
            ),
          ),
        ),
      ),
    );
  }
}

class LButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 90,
      padding: EdgeInsets.only(right: 40, left: 40, bottom: 15),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          print('ok');
//          Navigator.pop(context);

          print(Navigator);

          try{
//           Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
          }
          catch(e){
                      Navigator.pushReplacementNamed(context, "/Home");

          }
//          Navigator.pushReplacementNamed(context, "/Home");
//          Navigator.pushNamed(context, '/');
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
//                            color: Colors.white70,
        color: Color(0xff1AA1FF),
        child: Text(
          'ورود',
          style: TextStyle(
            color: Color(0xff4A4949),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'vazir',
          ),
        ),
      ),
    );


  }
}


class MyStatelessWidget1 extends StatelessWidget {
  MyStatelessWidget1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            new Directionality(textDirection: TextDirection.rtl,
                child: const ListTile(
                  leading: Icon(Icons.add_alert),
                  title: Text('تست بدن با دستگاه'),
                  subtitle: Text(
                    'برای تست بدن روز های دو شنبه و سه شنبه به استگاه مراجعه کنید',
                    style: (TextStyle(color: Colors.black)),),
                )
            ),
          ],
        ),
      ),
    );
  }
}


class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


