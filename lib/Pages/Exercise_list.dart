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
import 'package:untitlednew2_6/Widget/Drawer.dart';

import 'Exercise_program.dart';
import 'Home.dart';

//void main() => runApp(MyApp());

/// This is the main application widget.
///
///
///
class Exercise_list extends StatefulWidget {
  @override
//  _Exercise_listState createState() => _Exercise_listState();
  State createState() {
    return _Exercise_listState();
  }
}

class _Exercise_listState extends State<Exercise_list> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MyStatelessWidget(),
    );
  }
}

class Exercise_list2 extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
//            key: scaffoldKey,
            drawer: Drower(),
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

//                SizedBox(height: 31,),
                Food_list_body('شنبه','99/7/22'),

                SizedBox(height: 12,),
                Food_list_body('یک شنبه','99/7/23'),

                SizedBox(height: 12,),
                Food_list_body('دو شنبه','99/7/24'),

                SizedBox(height: 12,),
                Food_list_body('سه شنبه','99/7/25'),

                SizedBox(height: 12,),
                Food_list_body('چهار شنبه','99/7/26'),

                SizedBox(height: 12,),
                Food_list_body('پنج شنبه','99/7/27'),

                SizedBox(height: 12,),
                Food_list_body('جمعه','99/7/28'),
                SizedBox(height: 12,),

               Food_list_body('شنبه','99/7/29'),

                SizedBox(height: 12,),
                Food_list_body('یک شنبه','99/7/30'),

                SizedBox(height: 12,),
                Food_list_body('دو شنبه','99/8/1'),

                SizedBox(height: 12,),
                Food_list_body('سه شنبه','99/8/2'),

                SizedBox(height: 12,),
                Food_list_body('چهار شنبه','99/8/3'),

                SizedBox(height: 12,),
                Food_list_body('پنج شنبه','99/8/4'),

                SizedBox(height: 12,),
                Food_list_body('جمعه','99/8/5'),



              ],
            )));
  }
}
class Food_list_body extends StatelessWidget {
  final String name;
  final String date;
  Food_list_body(this.name,this.date);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector  (
        onTap: (){
      print (3);

//      Navigator.of(context).pushNamed('/Exercise_program');
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new DefaultPlayer()));


        },
    child: Container(
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
//              Color(0xff57E9E4)
            Color(0xff07E9E4)
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
      //
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text(this.name,style: TextStyle(fontSize: 20,color: Colors.white),),
          Text(this.date,style: TextStyle(fontSize: 20,fontFamily: 'vazirnu',color: Colors.white),),

        ],
      ),

    )
    );

  }
}


