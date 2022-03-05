import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'fqa.dart';

class Cantact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Cantact> {
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
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(Icons.keyboard_arrow_left)),
        title: Text("Contact Us"),
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
      body: SafeArea(
        child: Container(
          child: GridView(
            padding: EdgeInsets.all(20),
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 252, 251, 251),
                    border:
                        Border.all(color: Color.fromARGB(255, 105, 17, 66))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.white,
                        elevation: 0,
                        child: Icon(
                          Icons.mail_sharp,
                          size: 50,
                          color: Color.fromARGB(255, 105, 17, 66),
                        ),
                        onPressed: () {
                          bottensheets(context);
                        }),
                    Text(
                      "Support",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Write to Us",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 255, 255),
                    border:
                        Border.all(color: Color.fromARGB(255, 105, 17, 66))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.white,
                        elevation: 0,
                        child: Icon(
                          Icons.call,
                          size: 50,
                          color: Color.fromARGB(255, 105, 17, 66),
                        ),
                        onPressed: () async {
                          launch('tel://9943388256');
                          await FlutterPhoneDirectCaller.callNumber(9943388256);
                        }),
                    Text(
                      "Call Now",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 3, 3, 3),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "24/7",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 255, 255),
                    border:
                        Border.all(color: Color.fromARGB(255, 105, 17, 66))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Icon(
                          Icons.whatsapp,
                          size: 50,
                          color: Color.fromARGB(255, 105, 17, 66),
                        ),
                        onPressed: () async {
                          launch('tel://9943388256');
                          await FlutterPhoneDirectCaller.callNumber(9943388256);
                        }),
                    Text(
                      "Whatsapp",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 3, 3, 3),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "24/7",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 252, 251, 251),
                    border:
                        Border.all(color: Color.fromARGB(255, 105, 17, 66))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.white,
                        elevation: 0,
                        child: Icon(
                          Icons.location_pin,
                          size: 50,
                          color: Color.fromARGB(255, 105, 17, 66),
                        ),
                        onPressed: () {
                          bottensheets1(context);
                        }),
                    Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 252, 251, 251),
                    border:
                        Border.all(color: Color.fromARGB(255, 105, 17, 66))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.white,
                        elevation: 0,
                        child: Icon(
                          Icons.question_answer,
                          size: 50,
                          color: Color.fromARGB(255, 105, 17, 66),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => FQA()));
                        }),
                    Text(
                      "FQA",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ),
      ),
    );
  }

  void bottensheets(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Container(
          margin:EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 252, 252),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Support Request",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: const TextStyle(color: Colors.black)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.black)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Mobile Number",
                        hintStyle: const TextStyle(color: Colors.black)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Your Message",
                        hintStyle: const TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Buttons(
                        btnText: 'Cancel',
                        onBtnPressed: () {},
                        LeftPadding: 45.0,
                        bottomPadding: 10.0,
                        rightPadding: 45.0,
                        topPadding: 10.0,
                        colorOne: '6d1140',
                        colorTwo: '6d1140',
                        btnTextColor: 'ffffff', fontsize: 15.0,
                      ),
                      Buttons(
                        btnText: 'Save',
                        onBtnPressed: () {},
                        LeftPadding: 45.0,
                        bottomPadding: 10.0,
                        rightPadding: 45.0,
                        topPadding: 10.0,
                        colorOne: 'c6a972',
                        colorTwo: 'a8803b',
                        btnTextColor: 'ffffff', fontsize: 15.0,
                      ),
                    ],
                  )
                ],
              ),
            ));
  }

  void bottensheets1(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 252, 252),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Varan Matrimony",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Our Name, Door No, Street, Place,District, State-620001",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mob : +91 98765 43210",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mail : info@ourmatrimony.com",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ));
  }

  void launch(String s) {}
}

class FlutterPhoneDirectCaller {
  static callNumber(int i) {}
}
