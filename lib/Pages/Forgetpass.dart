import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

//import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitlednew2_6/Pages/Home.dart';

//import 'package:untitlednew2_6/Pages/Home.dart';

class Forgetpass extends StatefulWidget {
  @override
  _ForgetpassState createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            body:
            new ListView(
//                    margin: const EdgeInsets.only(top: 52),
              children: <Widget>[
                Center(
                  child: new Column(
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
                      MyInput('شماره همراه '),

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
                                "دریافت رمز ورد جدید",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                               ),textDirection: TextDirection.rtl,
                              ),
                              onPressed: () {
//                                Navigator.pop(context);
                                print(1);
                                _handleClickMe();

//                                Navigator.push(context, new MaterialPageRoute(builder: (context) => new ()));


                              },
                            ),
                          )),
                      SizedBox(height: 10,),
                  GestureDetector (
                    onTap: (){
                      Navigator.pop(context);

//                      /Navigator.push(context, new MaterialPageRoute(builder: (context) => new Forgetpass()));
                    },
                      child:Center(
                         child: Text("برگشت به صفحه ورود", style: TextStyle(color:Colors.red,fontSize: 14, decoration: TextDecoration.underline  ,fontWeight: FontWeight.w700),textDirection: TextDirection.rtl),
                      ) ,
                  ),



                      SizedBox(height: 10,),


                      MyStatelessWidget1()
                    ],
                  ),


                )

              ],


            )


        );



  }

  Future<void> _handleClickMe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('رمز ورد به تلفن همراه شما ارسال شد'),
          content: Text('پس از دریافت رمز در قسمت رمز ورد آن را وارد کنید '),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('متوجه شدم'),
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
            ),
//            CupertinoDialogAction(
//              child: Text('Allow'),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
          ],
        );
      },
    );
  }

}




class MyInput extends StatelessWidget {
  final String hint;

  MyInput(this.hint);

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
            keyboardType: TextInputType.number,
            textDirection: TextDirection.rtl,
            controller: null,
            autofocus: false,

            style: TextStyle(fontSize: 18.0, color: Color(0xFF456173)),
            decoration: new InputDecoration(
                icon: Icon(Icons.phone_iphone),
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
  final String hint;

  MyInput2(this.hint);

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
            keyboardType: TextInputType.number,
            textDirection: TextDirection.rtl,
            controller: null,
            autofocus: false,

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

