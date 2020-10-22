import 'package:sqflite/sqflite.dart';
import 'package:async/async.dart';
import 'package:path/path.dart';
import 'package:untitlednew2_6/DB/Student.dart';


class MyDB {
  static final MyDB myDB = new MyDB.local();

  factory MyDB()=> myDB;

  MyDB.local();

  final String ColName = 'Name';
  final String ColUni = 'Uni';
  final String Colid = 'ID';
  Database _db;

  Future <Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await MakeDB();
    return _db;
  }


  MakeDB() async {
    var dbpath = await getDatabasesPath();
    var path = join(dbpath, 'mydb.db');
    var mydb = await openDatabase(path, version: 1, onCreate: _oncreate);
    return mydb;
  }

  void _oncreate(Database db, int version) async {
    await db.execute(" CREATE TABLE student($Colid INTEGER PRIMARY KEY ,$ColName TEXT ,$ColUni TEXT )");
  }

  Future<int> savStudent(Student student) async {

    var MyClient =await db ;
    var result = await MyClient.insert('student', student.toMap());
    return result ;
  }
Future<List> getAllrecords() async {
    var MyClient = await db ;

    var result =await MyClient.rawQuery("SELECT * FROM  student ");
    return result ;


}
 Allen() async {
   var MyClient =await db ;
  await MyClient.transaction((txn) async {
    int id1 = await txn.rawInsert(
        'INSERT INTO student(name, uni) VALUES("some name", "alame")');
    print('inserted1: $id1');


//    int id2 = await txn.insert('student', 't');
//
//    int id2 = await txn.rawInsert(
//        'INSERT INTO student(name, uni) VALUES(?, ?)',
//       ['another name', "1"],);
//    print('inserted2: $id2');
  });

}
}