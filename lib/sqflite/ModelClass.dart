class ModelClass {
  String ?fullName;
  String ?email;
  String ?password;
  String ?mobile;

  ModelClass(
      {required this.fullName, required this.email, required this.password,required this.mobile});


  Map<String,dynamic> toMap(){
    var map = <String,dynamic>{
      'name':fullName,
      'email':email,
      'pass':password,
      'mob': mobile
    };
    return map;

  }

  ModelClass.fromMap(Map<String,dynamic> map){
    fullName = map['name'];
    email = map['email'];
    password = map['pass'];
    mobile = map['mob'];
  }
}
