import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitlednew2_6/Pages/Exercise_list.dart';
import 'package:untitlednew2_6/Pages/Food_list.dart';
import 'package:untitlednew2_6/Pages/Home.dart';
import 'package:untitlednew2_6/Pages/Login.dart';
import 'package:untitlednew2_6/Pages/Profile.dart';

class Drower extends StatefulWidget {
  @override
  _DrowerState createState() => _DrowerState();
}


class _DrowerState extends State<Drower> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  navigationToHome() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.deepOrangeAccent,
                    Colors.orange
                  ])
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                      elevation: 10,
                      color: Colors.transparent,
                      child: Padding(padding: EdgeInsets.all(0.0),
                        child: Image.asset("img/Splash2.jpeg", height: 90, width: 90),
                      ),
                    ),
//                    Text('MESport', style: TextStyle(color: Colors.white, fontSize: 25.0,fontFamily: 'vazir'),)
                  ],
                ),
              )),
          CustomListTile(Icons.home, 'صفحه اصلی', (){
//            Navigator.of(context).pop(1'/Login'),
//          Navigator.pushNamed(context, '/Login')
//         Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
//         Navigator.pushReplacementNamed(context, "/Home")
//            Navigator.of(context).pushNamed('/Home'),
//          print('a'),
//                        Navigator.of(context).pushNamed('/Home'),
//          Navigator.of(context).pushNamed('/Home')
//            Navigator.push(ctxt,
////                new MaterialPageRoute(builder: (ctxt) => new HomeView())
//            )
//          Navigator.pop(context);
//                    Navigator.of(context).pushNamed('/Home');
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
//                      Navigator.pushNamed(context, '/Home');
//                      Navigator.pushNamed(context, '/Home');
//            navigationToHome();

//                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
//          try{
//          Navigator.pushReplacementNamed(context, "/Home");
//        }
//        catch(e){
//          Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
//        }
          }),
          CustomListTile(Icons.accessibility_new_outlined, 'برنامه ورزشی', (){
//                    Navigator.of(context).pushNamed('/Exercise_list');
            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new Exercise_list()));

//
          }),
          CustomListTile(Icons.food_bank_outlined, 'برنامه غدایی', (){
//                    Navigator.of(context).pushNamed('/Food_list');
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Food_list()));

//
          }),
          CustomListTile(Icons.person, 'اطلاعات من', (){
//                    Navigator.of(context).pushNamed('/');
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Profile()));


            print('درحال ساخت');
//
          }),
          CustomListTile(Icons.exit_to_app, 'خروج', () async {

            SharedPreferences prefs = await SharedPreferences.getInstance();
//          await prefs.setString('user.api_token', userData['api_token']);
            await prefs.remove('user.api_token');

//                    Navigator.of(context).pushNamed('/');
            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new Login()));
//            Navigator.pushReplacementNamed(context, '/splash');


//            print('درحال ساخت');
//
          }),

        ],

      ),
    );
  }
}







class CustomListTile extends StatelessWidget{

  final IconData icon;
  final  String text;
  final Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context){
    //ToDO
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child:Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: onTap,
            child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Icon(icon),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      Text(text, style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'vazir'
                      ),),
                    ],),
                    Icon(Icons.arrow_right)
                  ],)
            )
        ),
      ),
    );
  }
}

