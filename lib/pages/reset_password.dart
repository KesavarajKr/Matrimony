import 'package:flutter/material.dart';

import 'forget_password.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_widget.dart';
import 'login.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ResetPassword> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isHiddenPassword = true;
  bool isHiddenPassword1 = true;
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
        title: Text("Reset Password"),
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
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
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
                              child: (Text('Confirm New Password',
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
                              hintText: 'Confirm Password',
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
                                  "Reset Password",
                                  style: TextStyle(fontSize: 16),
                                ),
                              )),
                        ),
                      ],
                    ))
                  ],
                ),
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
