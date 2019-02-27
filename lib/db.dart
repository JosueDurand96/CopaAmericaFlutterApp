import 'dart:async';
import 'dart:io'as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'entidades/equipos.dart';
class DBHelper{
  static Database _db;

  Future<Database>get db async{
    if(_db !=null)return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async{
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "copaamerica.db");
    var theDb = await openDatabase(path,version: 2,onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db,int version)async {
    await db.execute(
        "CREATE TABLE equipos(id INTEGER PRIMARY KEY, nombre TEXT, descripcion TEXT, urlfoto TEXT, visitas TEXT, votos TEXT,pj TEXT, pg TEXT, pe TEXT,pp TEXT, gf TEXT, gc TEXT,gd TEXT, pts TEXT, grupo TEXT )");
    print("Created tables");
  }

   //INSERT
  Future<int> saveEquipo(Equipos equipos)async{
    var dbClient = await db;
    int res = await dbClient.insert("equipos", equipos.toMap());
    print("Tabla equipo insertado");
    return res;
  }

  //MOSTRAR
  Future<List<Equipos>> getEquipos(String condicion)async{
    var dbClient = await db;
    List<Map> list =
        await dbClient.rawQuery('SELECT * FROM Equipos WHERE '+condicion);
    List<Equipos> equipos = List();
    for(int i =0; i<list.length;i++){
      equipos.add(Equipos(
          list[i]["i"],
          list[i]["nombre"],
         list[i]["descripcion"],
          list[i]["urlfoto"],
          list[i]["visitas"],
          list[i]["votos"],
          list[i]["pj"],
          list[i]["pg"],
          list[i]["pe"],
          list[i]["pp"],
          list[i]["gf"],
          list[i]["gc"],
          list[i]["gd"],
          list[i]["pts"],
          list[i]["grupo"]));
    }
    print(equipos.length);
    return equipos;
  }

}