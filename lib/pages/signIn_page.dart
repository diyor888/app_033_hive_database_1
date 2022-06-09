import 'package:app_033_hive_database_1/database/hive_1.dart';
import 'package:app_033_hive_database_1/models/sign%20in%20page.dart';
import 'package:app_033_hive_database_1/pages/signUp_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SignInPage extends StatefulWidget {
  static const String id = "singinpage";

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Color yashil = Color(0xff138D75);
  var inputEmail = TextEditingController();
  var inputPassword = TextEditingController();
  _SignIn() {
    String email = inputEmail.text.toString().trim();
    String password = inputPassword.text.toString().trim();

    var mybox = Hive.box("userdatabase");

    User user = new User(email: email, password: password);

    mybox.put("user", user.toJson());

    User user12 = User.fromJson(mybox.get("user"));

    print("email : ${user12.email}");
    print("password : ${user12.password}");

    // mybox.put("email", email);
    // mybox.put("password", password);
    // print("email : ${mybox.get("email")}");
    // print("password : ${mybox.get("password")}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: yashil,
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  //welcome avatar
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 30),
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width,
                    color: yashil,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/img.png"),
                          radius: 27,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Welcome",
                          style:
                              TextStyle(color: Color(0xffA2D9CE), fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  //email password sign in
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 50, right: 30),
                    height: MediaQuery.of(context).size.height * 0.73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //email
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 25),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          height: MediaQuery.of(context).size.height * 0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  offset: Offset(1, 1),
                                ),
                              ]),
                          child: TextField(
                            controller: inputEmail,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        //password
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 25),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          height: MediaQuery.of(context).size.height * 0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  offset: Offset(1, 1),
                                ),
                              ]),
                          child: TextField(
                            controller: inputPassword,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        //
                        Center(
                          child: Text(
                            "Forget password",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        //sign in button
                        Container(
                          height: MediaQuery.of(context).size.height * 0.065,
                          decoration: BoxDecoration(
                            color: yashil,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              _SignIn();
                             // hive1.sign_in(email: inputEmail,password: inputPassword);
                            },
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        //
                        Center(
                          child: Text(
                            "OR",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        // icons => facebook twitter instagram
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.06,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/img_4.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.06,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/img_2.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.06,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/img_3.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.115,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "sdvsdan sda xdfhas df",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, SignUpPage.id);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: yashil),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
