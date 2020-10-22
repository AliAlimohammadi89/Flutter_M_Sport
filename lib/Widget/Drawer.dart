import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class InkWellDrawer extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Drawer(
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
                      elevation: 10,
                      color: Colors.transparent,
                      child: Padding(padding: EdgeInsets.all(0.0),
                        child: Image.asset("img/Splash2.jpeg", height: 90, width: 90),
                      ),
                    ),
                    Text('Flutter', style: TextStyle(color: Colors.white, fontSize: 25.0,fontFamily: 'vazir'),)
                  ],
                ),
              )),
          CustomListTile(Icons.person, 'Profile', ()=>{
            Navigator.pop(ctxt),
//            Navigator.push(ctxt,
////                new MaterialPageRoute(builder: (ctxt) => new HomeView())
//            )
          }),
          CustomListTile(Icons.notifications, 'Notification', ()=>{
            Navigator.pop(ctxt),
//            Navigator.push(ctxt,
//                new MaterialPageRoute(builder: (ctxt) => new NotificationView())
//            )
          }),
          CustomListTile(Icons.settings, 'Settings', ()=>{}),
          CustomListTile(Icons.lock, 'Log Out', ()=>{}),
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

