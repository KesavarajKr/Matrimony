import 'package:flutter/material.dart';
import 'login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_widget.dart';
import 'reset_password.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
        title: Text("Forgot Password"),
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
                              child: (Text('Email Address',
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
                                return "please Enter Email Address";
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
                                        builder: (context) => ResetPassword()));
                              },
                              color: Color.fromARGB(255, 105, 17, 66),
                              textColor: Colors.white,
                              highlightColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  vertical: 19, horizontal: 16),
                              child: Center(
                                child: Text(
                                  "Continue",
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
}
