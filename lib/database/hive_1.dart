import 'package:app_033_hive_database_1/models/sign%20in%20page.dart';
import 'package:app_033_hive_database_1/models/sign%20up%20page.dart';
import 'package:hive/hive.dart';

class Hive_db_SI {
  var box_si = Hive.box("userdatabase");

  // database ga obyekt saqlash
  void add_si(SignIn signIn) {
    box_si.put("signIn", signIn.toJson());
  }

  // database dan obyektni olamiz
  SignIn get_obj_si() {
    SignIn si = new SignIn.fromJson(box_si.get("signIn"));
    return si;
  }

  // database dan obyektni o'chirish
  void remove_si () {
    box_si.delete("signIn");
  }
}

class Hive_db_SU {
  var box_su = Hive.box("userdatabase");

  // database ga obyekt saqlash
  void add_su(SignUp signUp) {
    box_su.put("signUp", signUp.toJson());
  }

  // database dan obyektni olamiz
  SignUp get_obj_su () {
    SignUp su = new SignUp.formJson(box_su.get("signUp"));
    return su;
  }

  // database dan obyektni o'chirish
  void remove_su () {
    box_su.delete("singUp");
  }
}
