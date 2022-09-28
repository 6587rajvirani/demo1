import 'package:shared_preferences/shared_preferences.dart';

void setSHR(String email , String password , bool login)async{
  SharedPreferences shr = await SharedPreferences.getInstance();
  shr.setString("email", email);
  shr.setString("password", password);
  shr.setBool("login", login);
}

Future<SHRModel> getSHR()async{
  SharedPreferences shr = await SharedPreferences.getInstance();
  String email = shr.get("email").toString();
  String password = shr.get("password").toString();
  bool? login= shr.getBool("login") as bool?;

  SHRModel s1 =  SHRModel(e1:email,p1:password,login:login);
  return s1;

}

class SHRModel{
  String? e1,p1;
  bool? login;

  SHRModel({this.e1,this.p1,this.login});
}