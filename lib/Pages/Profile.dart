/**
 * Author: Sudip Thapa
 * profile: https://github.com/sudeepthapa
 */
import 'package:flutter/material.dart';
import 'package:untitlednew2_6/Widget/Appbar.dart';
import 'package:untitlednew2_6/Widget/Drawer.dart';

class Profile extends StatefulWidget {
  static final String path = "lib/src/pages/login/login7.dart";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: Drower(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Appbar(),
          ),
          backgroundColor: Colors.white,
          body: ListView(
            children: <Widget>[
              Stack(
                 children: <Widget>[
                  ClipPath(
                    clipper: WaveClipper2(),
                    child: Container(
                      child: Column(),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(gradient: LinearGradient(
//                          colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
                          colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),

//                    colors: [Color(0xFF9Dd95F), Color(0x22fe494d)])),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipper3(),
                    child: Container(
                      child: Column(),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF00FFF6), Color(0x44fe494d)])),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipper1(),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
//                      Icon(
//                        Icons.fastfood,
//                        color: Colors.white,
//                        size: 60,
//                      ),
                          new Image.asset('./img/Splash2.jpeg', width: 100),

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
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xffFD8D00), Color(0xFFFD6000)])),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Column(
                   children: <Widget>[
                    new ListTile(
                      leading: Image.asset('img/height.PNG', width: 40, height: 40),
                      subtitle: Text('قد'),
                      title: new TextFormField(
                        style: TextStyle(fontFamily: 'Vazirnu'),

                        keyboardType: TextInputType.number,

                        initialValue: '187',
//                    controller: TextEditingController(),
                        decoration: new InputDecoration(
//                    counterText: 'ddd',
                          hintText: "قد",
                          suffixText: 'سانتی متر',
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: Image.asset('img/weight.PNG', width: 40, height: 40),
                      subtitle: Text('وزن'),
                      title: new TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontFamily: 'Vazirnu'),

                        initialValue: '82',
//                    controller: TextEditingController(),
                        decoration: new InputDecoration(
                          hintText: "قد",
                          suffixText: 'کیلو گرم',
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(
                        Icons.email,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: Text('ایمیل'),

                      title: new TextFormField(
                        initialValue: 'Test@gmail.com',
                        decoration: new InputDecoration(
                          hintText: "ایمیل",
                        ),
                      ),
                    ),

                    new ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: const Text('نام و نام خانوادگی'),
                      title: const Text(
                        'علی علی محمدی',
                        style: (TextStyle(color: Colors.black)),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(
                        Icons.phone_iphone,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: const Text('شماره همراه'),
                      title: const Text(
                        '09383650130',
                        style: (TextStyle(color: Colors.black,fontFamily: 'Vazirnu')),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(
                        Icons.credit_card_rounded,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: const Text('کد ملی'),
                      title: const Text(
                        '3040138258',
                        style: (TextStyle(color: Colors.black,fontFamily: 'Vazirnu')),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(
                        Icons.card_membership_rounded,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: const Text('شماره پرسنلی'),
                      title: const Text(
                        '47274',
                        style: (TextStyle(color: Colors.black,fontFamily: 'Vazirnu')),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(
                        Icons.location_history_rounded,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: const Text('آدرس'),
                      title: const Text(
                        'کرمان - رفسنجان - بلوار امام رضا - کوچه 13',
                        style:
                        TextStyle(fontFamily: 'Vazirnu', color: Colors.black),
                      ),
                    ),

                    new ListTile(
                      leading: const Icon(
                        Icons.today,
                        size: 40,
                        color: Colors.black,
                      ),
                      subtitle: const Text('تاریخ تولد'),
                      title: const Text(
                        '1370/1/24',
                        style:
                        TextStyle(fontFamily: 'Vazirnu', color: Colors.black),
                      ),
                    ),

                  ],
                ),

            ],
          ),
        )
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
