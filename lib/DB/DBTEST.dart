import 'package:flutter/material.dart';
//import 'package:untitlednew2_6/DB/Student.dart';
import 'MyDB.dart';
import 'package:async/async.dart';

import 'Student.dart';



void aaa() async  {


  var db = new MyDB();
  int i =  await  db.savStudent(new Student("Allen", "Tehran"));
  print(i);


}