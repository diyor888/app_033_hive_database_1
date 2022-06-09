import 'package:hive/hive.dart';

class AccountUser {
  String? email;
  String? password;
  String? number;
  String? address;

  AccountUser(this.email, this.password, this.number, this.address);
  sign_in ({email,password} ) {
    var box = Hive.box("userdatabase");
    box.put("email", email);
    box.put("password", password);
    print("email : ${box.get("email")}");
    print("password : ${box.get("password")}");
  }
}
