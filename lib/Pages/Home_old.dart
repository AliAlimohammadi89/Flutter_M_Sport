import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//void main() => runApp(MyApp());

/// This is the main application widget.
class Home extends StatelessWidget {
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

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(

            key: scaffoldKey,
            drawer: Home_Drower(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Home_Appbar(),
            ),
            body: new ListView(

              padding: EdgeInsets.only(
                top: 30,
              ),
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                        Stack(

                          alignment: Alignment.center,
//                              overflow: Overflow.clip,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal:1, vertical: 1),
                              width: 170.0,
                              height: 170.0,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                border: Border.all(width: 2,color:Color(0xff707070)),
                              ),
                              child:  Image.asset(
                                './img/food_p.jpg',
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  begin: Alignment.center,
                                  end: Alignment.center,
                                  colors: <Color>[
                                    Colors.black.withAlpha(0),
                                    Colors.white,
                                    Colors.white54
                                  ],
                                ),
                              ),
                              child: Text(
                                " برنامه غذایی",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0,fontFamily: 'Vazir',),
                              ),
                            ),
                          ],



                        ),
                    SizedBox(
                      width: 11,
                    ),
                    Stack(
                      alignment: Alignment.center,
//                              overflow: Overflow.clip,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal:1, vertical: 1),
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            border: Border.all(width: 2,color:Color(0xff707070)),
                          ),
                          child:  Image.asset(
                            './img/body_p.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.center,
                              colors: <Color>[
                                Colors.black.withAlpha(0),
                                Colors.white,
                                Colors.white54
                              ],
                            ),
                          ),
                          child: Text(
                            " برنامه غذایی",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18.0),
                          ),
                        ),
                      ],



                    ),
                  ],
                ),
                SizedBox(height: 28),
                H_W(),
                SizedBox(height: 27),
                BMI(),
                SizedBox(height: 18),


                Center(
                  child:     Stack(
                    children: <Widget>[
                      // Max Size

                      BBMM(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            './img/home_center.png',
                            fit: BoxFit.cover,
                            width: 150,
                            alignment: Alignment.center,
                          ) ,
                        ],
                      ),


                    ],
                  ) ,
                ),
                Container(
                  height:2.0,

                  margin: const EdgeInsets.only(top: 20.0,left: 85.0,right: 85.0,bottom: 10),


                 color: Color(0xff707070),
                ),

                Process(),




              ],
            )));
  }
}

class Home_Drower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Color(0xffFD8D00),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class Home_Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffFD8D00),
      actions: <Widget>[
        Image.asset('./img/Splash.png', width: 35)
        //            IconButton(
        //              icon: const Icon(Icons.navigate_next),
        //              tooltip: 'Next page',
        //              onPressed: () {
        //                openPage(context);
        //              },
        //            ),
      ],
      centerTitle: true,
      title: const Text(
        'MESPORT',
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xff323234)),
      ),
    );
  }
}
class H_W extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   new Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
//                      color: Colors.red,

            child:  new  Column(

              children: <Widget>[

                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.fromLTRB(3, 5, 19, 5),

                  decoration: new BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(width: 1,color:Color(0xff707070)),


                      gradient: new LinearGradient(
                          colors: [
                            const Color(0xFF32E3E9),
                            const Color(0xFFDFB89B),


                          ],
                          begin: const FractionalOffset(0.0, 1.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp
                      )
                  ),
                  child:   new Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('وزن ',style: TextStyle(fontFamily: 'Vazir',fontWeight: FontWeight.w700),),
                          Text('83 ',style: TextStyle(fontFamily: 'Vazirnu'),)
                        ],
                      ),
                      SizedBox(width: 20,),

                      Image.asset('img/weight.PNG',width: 50,height: 50),

                    ],
                  ) ,

                ),

              ],
            )
        ),
        Container(
//                      color: Colors.red,

            child:  new  Column(

              children: <Widget>[

                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.fromLTRB(3, 5, 19, 5),
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(width: 1,color:Color(0xff707070)),
                      gradient: new LinearGradient(
                          colors: [
                            const Color(0xFF32E3E9),
                            const Color(0xFFDFB89B),


                          ],
                          begin: const FractionalOffset(0.0, 1.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp
                      )
                  ),
                  child:   new Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('قد ',style: TextStyle(),),
                          Text('83 ')
                        ],
                      ),
                      SizedBox(width: 20,),

                      Image.asset('img/height.PNG',width: 50,height: 50),

                    ],
                  ) ,

                ),

              ],
            )
        ),





      ],
    );
  }
}
class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   new Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
//                      color: Colors.red,

            child:  new  Column(

              children: <Widget>[

                Container(
//                            margin: const EdgeInsets.only(top: 10.0),

                  padding: EdgeInsets.fromLTRB(7, 5, 7, 5),
                  decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0),topRight: Radius.circular(8.0)),
//                      border: Border.all(width: 1,color:Color(0xff70ff70)),
                      color: Color(0xffD5B69B),
                  ),
                  child:Center(

                    child:    Text('شاخص توده بدنی : 23',style: TextStyle(fontSize: 18),),
                  )
                ),

              ],
            )
        ),
        Container(
//                      color: Colors.red,

            child:  new  Column(

              children: <Widget>[

                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.fromLTRB(7, 5, 7, 5),
                  decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                      border: Border.all(width: 1,color:Color(0xff70ff70)),
                      color: Color(0xffFD8D00),
                  ),
                  child: Text('وزن سلامت',style: TextStyle(fontSize: 18),)
                ),

              ],
            )
        ),






      ],
    );
  }
}
class Process extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   new Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
//                      color: Colors.red,

            child:  new  Column(

              children: <Widget>[

                Container(
//                            margin: const EdgeInsets.only(top: 10.0),

                  padding: EdgeInsets.fromLTRB(7, 5, 7, 5),
                  decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0),topRight: Radius.circular(8.0)),
//                      border: Border.all(width: 1,color:Color(0xff70ff70)),
                      color: Color(0xff92F1ED),
                  ),
                  child:Center(

                    child:    Text('درصد پیشرفت برنامه ورزشی',style: TextStyle(fontSize: 18),),
                  )
                ),

              ],
            )
        ),
        Container(
//                      color: Colors.red,

            child:  new  Column(

              children: <Widget>[

                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.fromLTRB(7, 10 , 7, 10),
                  decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                      border: Border.all(width: 1,color:Color(0xff70ff70)),
                      color: Color(0xffFD8D00),
                  ),
                  child: Text('%25 ',style: TextStyle(fontSize: 18),)
                ),

              ],
            )
        ),






      ],
    );
  }
}
class BBMM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return   new
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 158),

        Column(
          children: <Widget>[
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),

                            padding: EdgeInsets.fromLTRB(7, 5, 3, 5),
                            decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                      border: Border.all(width: 1,color:Color(0xff707070)),



                              color: Color(0xff92F1ED),
                            ),
                            child:Center(

                              child:    Text('میزان چاقی',style: TextStyle(fontSize: 14),),
                            )
                        ),

                      ],
                    )
                ),
                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                            padding: EdgeInsets.fromLTRB(28, 5, 7, 5),
                            decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                              border: Border.all(width: 1,color:Color(0xff707070)),
                              border: Border(
                                top: BorderSide(width: 1,color:Color(0xff707070)),
                                bottom: BorderSide(width: 1,color:Color(0xff707070))

                              ),
                              color: Color(0xffFD8D00),
                            ),
                            child: Text('بالا',style: TextStyle(fontSize: 14),)
                        ),

                      ],
                    )
                ),






              ],
            ),
            SizedBox(height: 32,),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),

                            padding: EdgeInsets.fromLTRB(7, 5, 3, 5),
                            decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                              border: Border.all(width: 1,color:Color(0xff707070)),



                              color: Color(0xff92F1ED),
                            ),
                            child:Center(

                              child:    Text('میزان چاقی',style: TextStyle(fontSize: 14),),
                            )
                        ),

                      ],
                    )
                ),
                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                            padding: EdgeInsets.fromLTRB(28, 5, 7, 5),
                            decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                              border: Border.all(width: 1,color:Color(0xff707070)),
                              border: Border(
                                  top: BorderSide(width: 1,color:Color(0xff707070)),
                                  bottom: BorderSide(width: 1,color:Color(0xff707070))

                              ),
                              color: Color(0xffFD8D00),
                            ),
                            child: Text('بالا',style: TextStyle(fontSize: 14),)
                        ),

                      ],
                    )
                ),






              ],
            )
          ],
        ),
        SizedBox(width: 100,),
        Column(
          children: <Widget>[
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                            padding: EdgeInsets.fromLTRB(7, 5, 28, 5),
                            decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                              border: Border.all(width: 1,color:Color(0xff707070)),
                              border: Border(
                                  top: BorderSide(width: 1,color:Color(0xff707070)),
                                  bottom: BorderSide(width: 1,color:Color(0xff707070))

                              ),
                              color: Color(0xffFD8D00),
                            ),
                            child: Text('بالا',style: TextStyle(fontSize: 14),)
                        ),

                      ],
                    )
                ),

                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),

                            padding: EdgeInsets.fromLTRB(7, 5, 3, 5),
                            decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                              border: Border.all(width: 1,color:Color(0xff707070)),



                              color: Color(0xff92F1ED),
                            ),
                            child:Center(

                              child:    Text('میزان چاقی',style: TextStyle(fontSize: 14),),
                            )
                        ),

                      ],
                    )
                ),






              ],
            ),
            SizedBox(height: 32,),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                            padding: EdgeInsets.fromLTRB(7, 5, 28, 5),
                            decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                              border: Border.all(width: 1,color:Color(0xff707070)),
                              border: Border(
                                  top: BorderSide(width: 1,color:Color(0xff707070)),
                                  bottom: BorderSide(width: 1,color:Color(0xff707070))

                              ),
                              color: Color(0xffFD8D00),
                            ),
                            child: Text('بالا',style: TextStyle(fontSize: 14),)
                        ),

                      ],
                    )
                ),

                Container(
//                      color: Colors.red,

                    child:  new  Column(

                      children: <Widget>[

                        Container(
//                            margin: const EdgeInsets.only(top: 10.0),

                            padding: EdgeInsets.fromLTRB(7, 5, 3, 5),
                            decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                              border: Border.all(width: 1,color:Color(0xff707070)),



                              color: Color(0xff92F1ED),
                            ),
                            child:Center(

                              child:    Text('میزان چاقی',style: TextStyle(fontSize: 14),),
                            )
                        ),

                      ],
                    )
                ),






              ],
            ),

          ],
        ),

       ],
    )
   ;

  }
}

