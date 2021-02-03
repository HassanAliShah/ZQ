import 'package:flutter/material.dart';
import 'package:zq365/login_page.dart';

class Register extends StatefulWidget {
  static String id = "Register";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xffF2F4F9),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.id);
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Register now for free'),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 14),
                      child: Image.asset(
                        'images/cup.png',
                        alignment: Alignment.bottomRight,
                        height: 110,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    children: [
                      titles(
                        text: "Name",
                      ),
                      TextField(),
                      titles(
                        text: "Email",
                      ),
                      TextField(),
                      titles(
                        text: "Phone",
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "+92",
                        ),
                      ),
                      titles(
                        text: "Password",
                      ),
                      TextField(),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: FlatButton(
                              onPressed: () {},
                              color: Colors.deepOrangeAccent,
                              child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: Divider(
                                    color: Colors.grey.shade700,
                                    thickness: 1,
                                    endIndent: 1,
                                    indent: 1,
                                  )),
                              Container(
                                child: Text(
                                  "OR",
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: Divider(
                                    color: Colors.grey.shade700,
                                    thickness: 1,
                                    endIndent: 1,
                                    indent: 1,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 65, vertical: 14),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "Login with Facebook",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(fontSize: 18),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, LoginPage.id);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: Text(
                                  'login',
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class titles extends StatelessWidget {
  String text;
  titles({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Container(
          width: MediaQuery.of(context).size.width, child: Text(text)),
    );
  }
}
