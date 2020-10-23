import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitlednew2_6/Pages/Food_program.dart';
import 'package:untitlednew2_6/Widget/Appbar.dart';
import 'package:untitlednew2_6/Widget/Drawer.dart';

import 'Home.dart';

//void main() => runApp(MyApp());

/// This is the main application widget.
class Food_list extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

//final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));


/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
//            key: scaffoldKey,
            drawer: buildDrawerLayout(context),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Appbar(),
            ),
            body: new ListView(
              padding: EdgeInsets.only(
                top: 40,
              ),
              children: <Widget>[
//                Food_list_W('صبحانه'),
//                SizedBox(height: 12,),
//                Food_list_W('نهار'),
                SizedBox(height: 12,),
                Food_list_W('صبحانه'),
                SizedBox(height: 12,),
                Food_list_W('میان وعده اول'),
                SizedBox(height: 12,),
                Food_list_W('نهار'),
                SizedBox(height: 12,),
                Food_list_W('میان وعده دوم'),
                SizedBox(height: 12,),
                Food_list_W('شام'),

              ],
            )));
  }
}

class Food_list_W extends StatelessWidget {
  final String title ;
  Food_list_W(this.title);

  @override
  Widget build(BuildContext context) {
//    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        GestureDetector(
        onTap: (){
//          print('ok');
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new Food_program()));

        },
          child : Stack(
            alignment: Alignment.center,
//                              overflow: Overflow.clip,
            children: <Widget>[
              Container(
//                              padding: const EdgeInsets.symmetric(horizontal:1, vertical: 1),
                width: 343.0,
                height: 91.0,


                decoration: BoxDecoration(

//                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0), topLeft : Radius.circular (10.0)),
                  border: Border.all(width: 1),
                ),
                child:  Image.asset(

                  './img/food_p.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                width: 343.0,
                height: 91.0,
                decoration: BoxDecoration(
//                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0), topLeft : Radius.circular (10.0)),
                  border: Border.all(width: 1,color:Color(0xff707070)),
                ),

              ),
              Container(
//              padding: EdgeInsets.all(8.0),
//              padding: EdgeInsets.fromLTRB(40, 10 , 40, 10),

                alignment: Alignment.center,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.center,
                    colors: <Color>[
                      Colors.black.withAlpha(0),
                      Colors.white,
                      Colors.white70
                    ],
                  ),
                ),
                child:SizedBox(
                    width: 180,
                    height: 50,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.black, fontSize: 18.0),textAlign: TextAlign.center,
                        ),

                      ],
                    )


                ),
              ),
            ],



          ),


        ),

      ],
    );
  }
}
