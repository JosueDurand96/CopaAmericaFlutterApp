class Equipos{
  int id;
  String nombre;
  String descripcion;
  String urlfoto;
  String visitas;
  String votos;
  String pj;
  String pg;
  String pe;
  String pp;
  String gf;
  String gc;
  String gd;
  String pts;
  String grupo;

  Equipos(
      this.id,
      this.nombre,
      this.descripcion,
      this.urlfoto,
      this.visitas,
      this.votos,
      this.pj,
      this.pg,
      this.pe,
      this.pp,
      this.gf,
      this.gc,
      this.gd,
      this.pts,
      this.grupo);

  Equipos.map(dynamic obj){
    this.id = obj["id"];
    this.nombre=obj["nombre"];
    this.descripcion=obj["descripcion"];
    this.urlfoto=obj["urlfoto"];
    this.visitas=obj["visitas"];
    this.votos=obj["votos"];
    this.pj=obj["pj"];
    this.pg=obj["pg"];
    this.pe=obj["pe"];
    this.pp=obj["pp"];
    this.gf=obj["gf"];
    this.gc=obj["gc"];
    this.gd=obj["gd"];
    this.pts=obj["pts"];
    this.grupo=obj["grupo"];
  }

  int get _id => id;
  String get _nombre => nombre;
  String get _descripcion=>descripcion;
  String get _urlfoto=>urlfoto;
  String get _visitas=>visitas;
  String get _votos=>votos;
  String get _pj=>pj;
  String get _pg=>pg;
  String get _pe=>pe;
  String get _pp=>pp;
  String get _gf=>gf;
  String get _gc=>gc;
  String get _gd=>gd;
  String get _pts=>pts;
  String get _grupo=>grupo;


  Map<String,dynamic>toMap(){
    var map= Map<String,dynamic>();
    map["id"]=id;
    map["nombre"]=nombre;
    map["descripcion"]=descripcion;
    map["urlfoto"]=urlfoto;
    map["visitas"]=visitas;
    map["votos"]=votos;
    map["pj"]=pj;
    map["pg"]=pg;
    map["pe"]=pe;
    map["pp"]=pp;
    map["gf"]=gf;
    map["gc"]=gc;
    map["gd"]=gd;
    map["pts"]=pts;
    map["grupo"]=grupo;
    return map;
  }
}
