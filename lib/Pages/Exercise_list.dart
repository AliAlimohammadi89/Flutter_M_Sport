import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitlednew2_6/Widget/Appbar.dart';

import 'Home.dart';

//void main() => runApp(MyApp());

/// This is the main application widget.
class Exercise_list extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            key: scaffoldKey,
            drawer: Home_Drower(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Appbar(),
            ),
            body: new ListView(
              padding: EdgeInsets.only(
                top: 17,
              ),
              children: <Widget>[
//                Food_list_W('صبحانه'),
//                SizedBox(height: 12,),
//                Food_list_W('نهار'),

                SizedBox(
                  height: 31,
                ),
                Food_list_body('شیر کم چرب','دو لیوان'),
                SizedBox(height: 13, ),
                Food_list_body('خرwwما','10 عدد'),
                SizedBox(height: 13, ),
                Food_list_body('موز','یک عدد'),
                SizedBox(height: 13, ),
                Food_list_body('عسل','یک قاشق غذا خوری (میکس)'),
                SizedBox(height: 13, ),
                Food_list_body('کیک ساده سیبس  سیب سیب','دو برش متوسط'),

              ],
            )));
  }
}
class Food_list_body extends StatelessWidget {
  final String name;
  final String value;
  Food_list_body(this.name,this.value);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return
      Container(
        height: 50,
        margin: EdgeInsets.only(right: 10,left: 10),
        padding: EdgeInsets.only(left: 12,right: 12),
        decoration: BoxDecoration(
//          color: Colors.red,
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: <Color>[
//              Colors.black.withAlpha(0),
              Color(0xffFD8D00),
              Color(0xff57E9E4)
            ],
          ),
//                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.0),
              bottomLeft:  Radius.circular(8.0),
              bottomRight:  Radius.circular(8.0),

              topLeft: Radius.circular(10.0)),

//          border: Border.all(width: 0, color: Color(0xff707070)),
        ),
        child:        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Text('جلسه اول',style: TextStyle(fontSize: 20,color: Colors.white),),
            Text('99/7/19',style: TextStyle(fontSize: 20,fontFamily: 'vazirnu',color: Colors.white),),

          ],
        ),
      );
  }
}


