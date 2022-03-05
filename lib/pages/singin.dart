import 'package:flutter/material.dart';

import 'forget_password.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_widget.dart';
import 'package:varan_matrimony/pages/login.dart';
import 'package:varan_matrimony/pages/Privacy.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignIn> {
  bool isHiddenPassword = true;
  bool isHiddenPassword1 = true;
  bool isChecked = false;
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
        title: Text("SignIn"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
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
                  Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (Text('Email Address',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                          //  controller: nameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: 'user&gmail.com',
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
                            child: (Text('Phone Number',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                          //  controller: nameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: '10 digit mobile number',
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
                            child: (Text('New Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                          obscureText: isHiddenPassword,
                          //  controller: nameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: 'New Password',
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (Text('Re-Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                          obscureText: isHiddenPassword1,
                          //  controller: nameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,

                            border: OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: 'Re-Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: InkWell(
                                onTap: _tooglePasswordView1,
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
                    ],
                  ),
                  Container(
                    child: Row(
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
                          width: 2.0,
                        ),
                        Text("I Accept the",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        // Radio(
                        //   value: 2,
                        //   groupValue: selectedValue,
                        //   onChanged: (value) =>
                        //       setState(() => selectedValue = 2),
                        // ),
                        SizedBox(
                          width: 5.0,
                        ),
                        // Text(
                        //   "Forgot Password?",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.bold),
                        // ),
                        GestureDetector(
                          child: Text("Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 105, 17, 66))),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy()));
                          },
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
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            color: Color.fromARGB(255, 105, 17, 66),
                            textColor: Colors.white,
                            highlightColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            child: Center(
                              child: Text(
                                "Sign Up Account",
                                style: TextStyle(fontSize: 16),
                              ),
                            )),
                      ),
                    ],
                  ))
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

  void _tooglePasswordView1() {
    if (isHiddenPassword1 == true) {
      isHiddenPassword1 = false;
    } else {
      isHiddenPassword1 = true;
    }
    setState(() {});
  }
}
