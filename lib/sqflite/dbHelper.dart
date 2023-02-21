import 'dart:async';

import 'package:informative_app/sqflite/ModelClass.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class dbHelper{
  static Database ? _db;
  static const String DB_NAME = 'test.db';
  static const String TABLE_NAME = 'user';
  static const int DB_VERSION = 1;

  // ------ colum name ----

  static const String col1 = 'name';
  static const String col2 = 'email';
  static const String col3 = 'pass';
  static const String col4 = 'mob';

  Future<Database> get db async{
    if(_db != null){
      return _db!;
    }
    _db = await initDb();

    return _db!;
  }

  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path,DB_NAME);
    var db = await openDatabase(path,version: DB_VERSION,onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version)async{
    await db.execute("create table $TABLE_NAME("
        "$col1 TEXT,"
    "$col2 TEXT,"
    "$col3 TEXT,"
    "$col4 TEXT,"
    "PRIMARY KEY($col4)"
        ")");

  }
  // Regester User Code...
  Future<int> saveData(ModelClass user)async{
    var dbClient = await db; // openDatabase
    var res = await dbClient.insert(TABLE_NAME, user.toMap());
    return res;
  }

  // Login User Code...

// Future<ModelClass?> getLoginUser(String em, String pass) async{
//     var dbClient = await db;
//     var res = await dbClient.rawQuery("select * from $TABLE_NAME where $col2='$em' And $col3='$pass'");
//     if(res.length>0){
//       return ModelClass.fromMap(res.first);
//     }
//     return null;
//
//
//   }


// Login User

Future<ModelClass?> getLoginUser(String e, String p)async{
    var dbClient = await db;
    var res = await dbClient.rawQuery("select * from $TABLE_NAME where $col2 = '"+e+"' And $col3='"+p+"'");
    if(res.length>0){
      return ModelClass.fromMap(res.first);
    }
    return null;
}

}