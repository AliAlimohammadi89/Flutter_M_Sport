import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:untitlednew2_6/Widget/Appbar.dart';
import 'package:untitlednew2_6/Widget/Drawer.dart';
import 'package:video_player/video_player.dart';

Map<String, dynamic> mockData = {
  "items": [
    {
      "title": "Rio from Above",
      "image": "images/rio_from_above_poster.jpg",
      "trailer_url":
      " https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/example/rio_from_above_compressed.mp4?raw=true",
    },
    {
      "title": "The Valley",
      "image": "images/the_valley_poster.jpg",
      "trailer_url":
      "https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/example/the_valley_compressed.mp4?raw=true",
    },
    {
      "title": "Iceland",
      "image": "images/iceland_poster.jpg",
      "trailer_url":
      " https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/example/iceland_compressed.mp4?raw=true",
    },
    {
      "title": "9th May & Fireworks",
      "image": "images/9th_may_poster.jpg",
      "trailer_url":
      " https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/example/9th_may_compressed.mp4?raw=true",
    },
  ]
};

class DefaultPlayer extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;

    return MaterialApp(


      title: _title,
      home: MyStatelessWidgetVedeo(),
    );
  }
}


class MyStatelessWidgetVedeo extends StatelessWidget {
  MyStatelessWidgetVedeo({Key key}) : super(key: key);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    print('tab');
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;

    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(

//            bottomNavigationBar: BottomNavigationBar(
//              items: const <BottomNavigationBarItem>[
//             
//                BottomNavigationBarItem(
//                  icon: Icon(Icons.home),
//                  label: 'Home',
//                  backgroundColor: Colors.red,
//
//                ),
//                BottomNavigationBarItem(
//                  icon: Icon(Icons.business),
//                  label: 'Business',
//                ),
//
//              ],
//              currentIndex: _selectedIndex,
//              selectedItemColor: Colors.amber[800],
//              onTap: _onItemTapped,
//            ),
            bottomNavigationBar:                Container(
              height: 60,
               child: Row(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Container(
//                            margin: const EdgeInsets.only(top: 10.0),
//                              padding: EdgeInsets.fromLTRB(10, 5, 10, 4),

                    decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(width: 0.5, color: Color(0xff707070)),
                        gradient: new LinearGradient(
                            colors: [
                              const Color(0xFF32E3E9),
                              const Color(0xFFDFB89B),
                            ],
                            begin: const FractionalOffset(0.0, 1.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp)),
                    child:SizedBox(
//                          width:150,
                    width: width * 0.49,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                            new Icon(
                              Icons.keyboard_arrow_right,
                              size: 50,
                            ),

                          ],),
                          Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Text('بعدی',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
                          ],),

                        ],
                      ),

                    ),
                  ),
                  Container(
//                            margin: const EdgeInsets.only(top: 10.0),
//                              padding: EdgeInsets.fromLTRB(10, 5, 10, 4),

                    decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(width: 0.5, color: Color(0xff707070)),
                        gradient: new LinearGradient(
                            colors: [
                              const Color(0xFF32E3E9),
                              const Color(0xFFDFB89B),
                            ],
                            begin: const FractionalOffset(0.0, 1.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp)),
                    child:SizedBox(
                      width: width * 0.50,

                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [

                            Text('قبلی',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
                          ],),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,


                            children: [
                            new Icon(
                              Icons.keyboard_arrow_left,
                              size: 50,
                            ),

                          ],)
                        ],
                      ),

                    ),
                  ),



                ],
              )
              ,
            )


,

//            key: scaffoldKey,
            drawer: Drower(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Appbar(),
            ),
            body: new ListView(
//              padding: EdgeInsets.only(
//                top: 40,
//              ),
              children: <Widget>[
//                Food_list_W('صبحانه'),
//                SizedBox(height: 12,),
//                Food_list_W('نهار'),



                  SizedBox(
                    height: 200,
                    child : DefaultPlayer1(),
                  ),
                  SizedBox(height: 1,),
                  H_W(),
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new ListTile(

//                          leading: Icon(Icons.info_outline),
                            title: Text('هاگ پا دستگاه',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text('حین انجام حرکت زانو ها 90 درجه خم می شوند',style: TextStyle(color: Colors.black,fontFamily: 'Vazirnu'),),
                                  leading: Icon(Icons.adjust),
                                ),
                                ListTile(
                                  title: Text('حین انجام حرکت سر در راحت ترین وضعیت خود قرار میگیرد',style: TextStyle(color: Colors.black,fontFamily: 'Vazirnu'),),
                                  leading: Icon(Icons.adjust),
                                ),
                                ListTile(
                                  title: Text('حین انجام حرکت از قوز کردن پرهیز شود و پاها به انداره ی عرض شانه روی صفحه قرار می گیرند',style: TextStyle(color: Colors.black,fontFamily: 'Vazirnu'),),
                                  leading: Icon(Icons.adjust),
                                ),
                              ],
                            ) ,
                          ),
                        ],
                      ),
                    ),
                  ),





              ],
            )));
  }
}




class DefaultPlayer1 extends StatefulWidget {
  DefaultPlayer1({Key key}) : super(key: key);

  @override
  _DefaultPlayerState createState() => _DefaultPlayerState();
}

class _DefaultPlayerState extends State<DefaultPlayer1> {
  FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network(mockData["items"][0]["trailer_url"]),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(

      child:(
        VisibilityDetector(
          key: ObjectKey(flickManager),
          onVisibilityChanged: (visibility) {
            if (visibility.visibleFraction == 0 && this.mounted) {
              flickManager.flickControlManager.autoPause();
            } else if (visibility.visibleFraction == 1) {
              flickManager.flickControlManager.autoResume();
            }
          },
          child: Container(

            child: FlickVideoPlayer(
              flickManager: flickManager,
              flickVideoWithControls: FlickVideoWithControls(
                controls: FlickPortraitControls(),
              ),
              flickVideoWithControlsFullscreen: FlickVideoWithControls(
                controls: FlickLandscapeControls(),
              ),
            ),
          ),
        )
      ),
    );
  }
}

class H_W extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
         Container(
//                      color: Colors.red,

            child: new Column(
              children: <Widget>[
                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 4),

                  decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(width: 1, color: Color(0xff707070)),
                      gradient: new LinearGradient(
                          colors: [
                            const Color(0xFF32E3E9),
                            const Color(0xFFDFB89B),
                          ],
                          begin: const FractionalOffset(0.0, 1.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: new Row(
                    children: [
                      Column(children: [
                        Text('ست'),
                        Text('7',style: TextStyle(fontWeight: FontWeight.w700)),
                      ],),


                      Column(children: [

                        new Icon(
                          Icons.threesixty_sharp,
                          size: 50,
                        ),

                      ],)
                    ],
                  ),
                ),
              ],
            )),
         Container(
//                      color: Colors.red,

            child: new Column(
              children: <Widget>[
                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.fromLTRB(4, 5, 19, 4),

                  decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(width: 1, color: Color(0xff707070)),
                      gradient: new LinearGradient(
                          colors: [
                            const Color(0xFF32E3E9),
                            const Color(0xFFDFB89B),
                          ],
                          begin: const FractionalOffset(0.0, 1.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: new Row(
                    children: [
                      Column(children: [
                        Text('استراحت'),
                        Text('7 دقیقه',style: TextStyle(fontWeight: FontWeight.w700),),
                      ],),


                      Column(children: [

                        new Icon(
                          Icons.access_alarms_outlined,
                          size: 50,
                        ),

                      ],)
                    ],
                  ),
                ),
              ],
            )),
        Container(
//                      color: Colors.red,

            child: new Column(
              children: <Widget>[
                Container(
//                            margin: const EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.fromLTRB(4, 5, 19, 4),

                  decoration: new BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(width: 1, color: Color(0xff707070)),
                      gradient: new LinearGradient(
                          colors: [
                            const Color(0xFF32E3E9),
                            const Color(0xFFDFB89B),
                          ],
                          begin: const FractionalOffset(0.0, 1.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp)),
                  child: new Row(
                    children: [
                      Column(children: [
                        Text('تکرار'),
                        Text('7',style: TextStyle(fontWeight: FontWeight.w700)),
                      ],),


                      Column(children: [

                        new Icon(
                          Icons.find_replace,
                          size: 50,
                        ),

                      ],)
                    ],
                  ),
                ),
              ],
            )),

       ],
    );
  }
}
