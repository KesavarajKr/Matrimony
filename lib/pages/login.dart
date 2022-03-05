import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_widget.dart';
import 'package:varan_matrimony/pages/forget_password.dart';
import 'package:varan_matrimony/pages/reset_password.dart';
import 'package:varan_matrimony/pages/singin.dart';
// import 'home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isHiddenPassword = true;
  bool isChecked = false;
  int selectedValue = 1;
  final style = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100,
        title: Text("Login In Account"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 105, 17, 66),
                Color.fromARGB(255, 105, 17, 66),
              ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: new ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height:250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("Page5.png")),
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                              child: (Text('User Name',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                            )),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please Enter Username";
                              }
                            },
                            //  controller: nameController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                              fillColor: HexColor("dbd2e9"),
                              filled: true,
                              border: OutlineInputBorder(),
                              // labelText: 'Username',
                              hintText: 'Type Here',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: HexColor("DFA7B2"), width: 0.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: HexColor("DFA7B2"), width: 0.2),
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                              child: (Text('Password',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                            )),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please Enter Password";
                              }
                            },
                            obscureText: isHiddenPassword,
                            //  controller: nameController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                              fillColor: HexColor("dbd2e9"),
                              filled: true,
                              border: OutlineInputBorder(),
                              // labelText: 'Username',
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: InkWell(
                                  onTap: _tooglePasswordView,
                                  child: Icon(Icons.visibility)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: HexColor("DFA7B2"), width: 0.2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    color: HexColor("DFA7B2"), width: 0.2),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              // Radio(
                              //   value: 1,
                              //   groupValue: selectedValue,
                              //   onChanged: (value) =>
                              //       setState(() => selectedValue = 1),
                              // ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() => isChecked = value!);
                                  }),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text("Remember Me",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              // Radio(
                              //   value: 2,
                              //   groupValue: selectedValue,
                              //   onChanged: (value) =>
                              //       setState(() => selectedValue = 2),
                              // ),
                              SizedBox(
                                width: 135.0,
                              ),
                              // Text(
                              //   "Forgot Password?",
                              //   style: TextStyle(
                              //       fontSize: 16, fontWeight: FontWeight.bold),
                              // ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  child: Text("Forgot Password?",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgetPassword()));
                                  },
                                ),
                              ),

                              const SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: RaisedButton(
                                  elevation: 10.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Dashboard()));
                                    } else {
                                      Text("Filled Error");
                                    }
                                  },
                                  color: Color.fromARGB(255, 105, 17, 66),
                                  textColor: Colors.white,
                                  highlightColor: Colors.black,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 19, horizontal: 16),
                                  child: Center(
                                    child: Text(
                                      "Log In Account",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Radio(
                                  //   value: 1,
                                  //   groupValue: selectedValue,
                                  //   onChanged: (value) =>
                                  //       setState(() => selectedValue = 1),
                                  // ),

                                  Text("You don’t have an account? ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  // Radio(
                                  //   value: 2,
                                  //   groupValue: selectedValue,
                                  //   onChanged: (value) =>
                                  //       setState(() => selectedValue = 2),
                                  // ),
                                  // SizedBox(
                                  //   width: 25.0,
                                  // ),
                                  // Text(
                                  //   "Forgot Password?",
                                  //   style: TextStyle(
                                  //       fontSize: 16, fontWeight: FontWeight.bold),
                                  // ),
                                  GestureDetector(
                                    child: Text("Sign Up",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginScreen()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _tooglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
