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

//void main() => runApp(MyApp());

/// This is the main application widget.
class Home extends StatelessWidget {


  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {

//    print('home');
    return  Home_des();
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
class Home_des extends StatelessWidget {
  Home_des({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            key: scaffoldKey,
//            drawer: Home_Drower(),
            drawer: InkWellDrawer(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Appbar(),
            ),
            body: new ListView(

              padding: EdgeInsets.only(
                top: 30,
              ),
              children: <Widget>[

//                SizedBox(height: 28),
                H_W(),
                SizedBox(height: 27),
                BMI(),
                SizedBox(height: 18),
                Center(
                  child:     Stack(
                    children: <Widget>[
                      // Max Size

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            './img/home_center.png',
                            fit: BoxFit.cover,
                            width: 100,

                            alignment: Alignment.centerLeft,
                          ) ,
                        ],
                      ),



                      BBMM(),
                    ],
                  ) ,
                ),
                Container(
                  height:2.0,
                  margin: const EdgeInsets.only(top: 20.0,left: 85.0,right: 85.0,bottom: 10),
                 color: Color(0xff707070),
                ),
                Process(),
                SizedBox(height: 20,),
                F_E()
              ],
            )));
  }
}

class Program_BF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
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
    );
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
            child: Text('Drawer Header',style: TextStyle(fontFamily: 'Vazir',fontSize: 12)),
            decoration: BoxDecoration(
//              color: Color(0xffFD8D00),
              color: Color(0xfffa983a),
            ),
          ),
          ListTile(
            title: Text('Item 1',style: TextStyle(fontFamily: 'Vazir',fontSize: 12)),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2',style: TextStyle(fontFamily: 'Vazir',fontSize: 12)),
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
                          Text('قد ',style: TextStyle(fontFamily: 'Vazir',fontWeight: FontWeight.w700)),
                          Text('178 ',style: TextStyle(fontFamily: 'Vazirnu',))
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
class F_E extends StatelessWidget {
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
                          Text('برنامه غذایی',style: TextStyle(fontFamily: 'Vazir',fontWeight: FontWeight.w700),),
//                          Text('83 ',style: TextStyle(fontFamily: 'Vazirnu'),)
                        ],
                      ),
                      SizedBox(width: 20,),

                   new  Icon(Icons.food_bank_outlined,size: 50,),


//                      Image.asset('img/weight.PNG',width: 50,height: 50),
//                    icon:Icon(Icons.food_bank_outlined),
//                      icon: Icon(Icons.person),



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
                          Text('برنامه ورزشی',style: TextStyle(fontFamily: 'Vazir',fontWeight: FontWeight.w700),),
                         ],
                      ),
                      SizedBox(width: 20,),

                      Image.asset('img/Exercise.png',width: 50,height: 50,color: Colors.black,),

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

                    child:    Text('شاخص توده بدنی : 23',style: TextStyle(fontSize: 18,fontFamily: 'Vazirnu'),),
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
                  child: Text('وزن سلامت',style: TextStyle(fontSize: 18,fontFamily: 'vazir'),)
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
//                      color: Color(0xff92F1ED),
                      color: Color(0xff7f8fa6),
                  ),
                  child:Center(

                    child:    Text('درصد پیشرفت برنامه ورزشی',style: TextStyle(fontSize: 18,fontFamily: 'vazir'),),
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

//                    padding: EdgeInsets.fromLTRB(7, 10 , 7, 10),
                  decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                      border: Border.all(width: 1,color:Color(0xff70ff70)),
                      color: Color(0xffFD8D00),
                  ),
                  child: Text('%25 ',style: TextStyle(fontSize: 18,fontFamily: 'Vazirnu'),)
                ),

              ],
            )
        ),






      ],
    );
  }
}
class BBMM_Creator extends StatelessWidget {
  final name ;
  final value ;
  double margin ;
  BBMM_Creator(this.name,this.value,this.margin);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.fromLTRB(2,0,this.margin,0),

       child: Row(
//      padding: EdgeInsets.fromLTRB(4,0,this.margin,0),
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

          Container(


//                  margin: const EdgeInsets.fromLTRB(13,0,0,0),
//                      color: Colors.red,

              child:  new  Column(

                children: <Widget>[

                  Container(
                     width:65,
                      height: 30,
                      alignment: Alignment.centerRight,
//                            margin: const EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.fromLTRB(0, 0,2,0),
                      decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                        border: Border.all(width: 1,color:Color(0xff707070)),



//                        color: Color(0xff92F1ED),

                        gradient: new LinearGradient(
                          colors: [
                            const Color(0xFF98BC64),
                            const Color(0xFF00FFF6),



                          ],
                        ),


                      ),
                      child:   Text(this.name,style: TextStyle(fontFamily: 'Vazir',fontSize: 12),),

                  ),

                ],
              )
          ),
          Container(
//                      color: Colors.red,

              child:  new  Column(

                children: <Widget>[

                  Container(

                      width:44,
                      height: 30,
                      alignment: Alignment.centerRight,
//                            margin: const EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.fromLTRB(0, 0,4,0),

//                            margin: const EdgeInsets.only(top: 10.0),
                       decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                              border: Border.all(width: 1,color:Color(0xff707070)),
                        border: Border.all(width: 1,color:Color(0xff707070)),

//                        border: Border(
//                            top: BorderSide(width: 1,color:Color(0xff707070)),
//                            bottom: BorderSide(width: 1,color:Color(0xff707070))
//
//                        ),
//                        color: Color(0xffFD8D00),
                         gradient: new LinearGradient(
                           colors: [
                             const Color(0xFFFD8F03),

                             const Color(0xFF9DB95F),



                           ],
                         ),

                      ),
                      child: Text(this.value,style: TextStyle(fontFamily: 'Vazirnu',fontSize: 12),)
                  ),

                ],
              )
          ),
        ],
      ),
    );
  }
}
class BBMM_CreatorL extends StatelessWidget {
  final name ;
  final value ;
  double margin ;
  BBMM_CreatorL(this.name,this.value,this.margin);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.fromLTRB(this.margin ,0,2,0),

       child: Row(
//      padding: EdgeInsets.fromLTRB(4,0,this.margin,0),
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

          Container(

//                  margin: const EdgeInsets.fromLTRB(13,0,0,0),
//                      color: Colors.red,

              child:  new  Column(

                children: <Widget>[


                ],
              )
          ),
          Container(
//                      color: Colors.red,

              child:  new  Column(

                children: <Widget>[

                  Container(

                      width:44,
                      height: 30,
                      alignment: Alignment.center,
//                            margin: const EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.fromLTRB(0, 0,2,0),

//                            margin: const EdgeInsets.only(top: 10.0),
                       decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),bottomRight: Radius.circular(8.0)),
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
//                              border: Border.all(width: 1,color:Color(0xff707070)),
//                        border: Border.all(width: 1,color:Color(0xff707070)),
                         border: Border(

                          top: BorderSide(width: 1,color:Color(0xff707070)),
                          bottom: BorderSide(width: 1,color:Color(0xff707070)),
                           right: BorderSide(width: 1,color:Color(0xff707070)),
                             left: BorderSide(width: 1,color:Color(0xff707070)),

    ),


//
//                        ),

//                        border: Border(
//                            top: BorderSide(width: 1,color:Color(0xff707070)),
//                            bottom: BorderSide(width: 1,color:Color(0xff707070))
//
//                        ),
//                        color: Color(0xffFD8D00),
                         gradient: new LinearGradient(
                           colors: [

                             const Color(0xFF9DB95F),
                             const Color(0xFFFD8F03),



                           ],
                         ),

                      ),
                      child: Text(this.value,style: TextStyle(fontFamily: 'Vazirnu'),)
                  ),

                ],
              )
          ),
          Container(
            width:65,
            height: 30,
            alignment: Alignment.centerRight,
//                            margin: const EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.fromLTRB(0, 0,2,0),
            decoration: new BoxDecoration(

//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
              border: Border.all(width: 1,color:Color(0xff707070)),




//                        color: Color(0xff92F1ED),

              gradient: new LinearGradient(
                colors: [
                  const Color(0xFF00FFF6),

                  const Color(0xFF98BC64),


                ],
              ),


            ),
            child:   Text(this.name,style: TextStyle(fontFamily: 'Vazir',fontSize: 12)),

          ),

        ],
      ),
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
         Column(

          children: <Widget>[
            SizedBox(height: 20,),


            BBMM_Creator('میزان چاقی','بالا',30),
            SizedBox(height: 22,),
            BBMM_Creator('میزان چاقی','بالا',0),
            SizedBox(height: 22,),
            BBMM_Creator('میزان چاقی','بالا',0),
            SizedBox(height: 22,),
            BBMM_Creator('میزان چاقی','بالا',30),
            ],
        ),
        SizedBox(width: 75 ,),
        Column(
          children: <Widget>[
            SizedBox(height: 20,),
            BBMM_CreatorL('میزان چاقی','سیار بالا',30),
            SizedBox(height: 22,),
            BBMM_CreatorL('میزان چاقی','بالا',0),
            SizedBox(height: 22,),
            BBMM_CreatorL('میزان چاقی','بالا',0),
            SizedBox(height: 22,),
            BBMM_CreatorL('میزان چاقی','3بالا',30),
          ],
        ),
       ],
    )
   ;

  }
}


/////////////////////////////////////////////////////////////



