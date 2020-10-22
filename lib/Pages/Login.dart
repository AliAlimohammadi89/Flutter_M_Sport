import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

//import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      SizedBox(height: 40),
                      new Image.asset('./img/Splash2.jpeg', width: 150),
                      SizedBox(height: 30),
                      MyInput('کد ملی'),
                      MyInput2('رمز ورود'),
                      SizedBox(height: 20),
                      LButton(),
                      MyStatelessWidget1()
                    ],
                  ),


                )

              ],


            )


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

          Navigator.of(context).pushNamed('/Home');
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
