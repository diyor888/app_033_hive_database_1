import 'package:app_033_hive_database_1/database/hive_1.dart';
import 'package:app_033_hive_database_1/models/sign%20up%20page.dart';
import 'package:app_033_hive_database_1/pages/new%20sign%20in.dart';
import 'package:app_033_hive_database_1/pages/signIn_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "signuppage";

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Color yashil = Color(0xff138D75);
  var inputEmail = TextEditingController();
  var inputNumber = TextEditingController();
  var inputAddress = TextEditingController();

  _SignUp() {
    String email = inputEmail.text.toString().trim();
    String number = inputNumber.text.toString().trim();
    String address = inputAddress.text.toString().trim();

    SignUp su = new SignUp(email: email, number: number, address: address);
    Hive_db_SU().add_su(su);
    SignUp _su = Hive_db_SU().get_obj_su();
    print("email : ${_su.email}");
    print("number : ${_su.number}");
    print("address : ${_su.address}");
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
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    color: yashil,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style:
                              TextStyle(color: Color(0xffA2D9CE), fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  //email password sign in
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 50, right: 30),
                    height: MediaQuery.of(context).size.height * 0.85,
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
                        //Number
                        Text(
                          "Number",
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
                            controller: inputNumber,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Number",
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
                        //Address
                        Text(
                          "Adress",
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
                            controller: inputAddress,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Adress",
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
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
                              _SignUp();
                            },
                            child: Center(
                              child: Text(
                                "Sign Up",
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
                                    context, SignInPage.id);
                              },
                              child: Text(
                                "Sign In",
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
