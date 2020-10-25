
import 'package:flutter/cupertino.dart';

/// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';




class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        backgroundColor: Color(0xffFD8D00),
        actions: <Widget>[
          Image.asset('./img/Splash2.jpeg', width: 35)
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
      ),
    );
//    return AppBar(
//      backgroundColor: Color(0xffFD8D00),
//      actions: <Widget>[
//        Image.asset('./img/Splash.png', width: 35)
//        //            IconButton(
//        //              icon: const Icon(Icons.navigate_next),
//        //              tooltip: 'Next page',
//        //              onPressed: () {
//        //                openPage(context);
//        //              },
//        //            ),
//      ],
//      centerTitle: true,
//      title: const Text(
//        'MESPORT',
//        textAlign: TextAlign.center,
//        style: TextStyle(color: Color(0xff323234)),
//      ),
//    );
  }
}
