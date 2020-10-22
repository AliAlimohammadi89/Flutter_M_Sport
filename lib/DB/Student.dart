class Student {
  String _Name ;
  String _Uni ;
  int _id ;

  Student(this._Name,this._Uni);

  Student.Map(dynamic student){
    this._Name =student['name'];
    this._Uni = student['uni'];
    this._id = student['id'];

  }
  Student.MaptoObject(Map<String,dynamic> map){
    this._Name = map['name'] ;
    this._Uni = map['uni'];
    this._id = map['id'] ;

  }

  int get id => _id;

  String get Uni => _Uni;

  String get Name => _Name;

  Map<String , dynamic> toMap(){
    var map = new Map<String,dynamic>();
    map['name'] = this._Name ;
    map['uni'] = this._Uni;
    if(id != null){
      map['id'] =this._id;
    }
    return map;

  }
}