import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:intl/intl.dart";
import 'Privacy.dart';
import 'Verify_Phone.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'bio_data.dart';
import 'contact.dart';
import 'custom_widget.dart';
import 'dashboard.dart';
import 'data.dart';
import 'package:varan_matrimony/modal/opt.dart';


import 'login.dart';

class LoginScreen extends StatefulWidget {

 
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {

  int selected = 0;

  int genderselected = 0;

  Widget customRadio (String text, int index)
{
    return SizedBox(
      width:100,
      height:35,
      child: ElevatedButton(
        
        onPressed: (){
          setState((){
            selected = index;
            print(selected);
          });
        },
         child: Text(
           text,
           style:
           TextStyle(
             fontWeight:FontWeight.bold,
             color:(selected == index) ? Colors.white : Colors.black),
              
           ),
          style:ButtonStyle(
            
            backgroundColor: (selected == index) ? MaterialStateProperty.all(HexColor('98803b')) : MaterialStateProperty.all(HexColor('cf97a2')),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: (selected == index) ? HexColor('98803b') : HexColor('cf97a2'))
      )
      )
              
          )
         ),
    );
}

Widget GendercustomRadio (String text, int index)
{
    return SizedBox(
      width:100,
      height:35,
      child: ElevatedButton(
        
        onPressed: (){
          setState((){
            genderselected = index;
            
          });
        },
         child: Text(
           text,
           style:
           TextStyle(
             fontWeight:FontWeight.bold,
             color:(genderselected == index) ? Colors.white : Colors.black),
              
           ),
          style:ButtonStyle(
            
            backgroundColor: (genderselected == index) ? MaterialStateProperty.all(HexColor('98803b')) : MaterialStateProperty.all(HexColor('cf97a2')),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: (genderselected == index) ? HexColor('98803b') : HexColor('cf97a2'))
      )
      )
              
          )
         ),
    );
}

  bool isChecked = false;
  bool _isChecked1 = false;
  bool isHiddenPassword = true;
  DateTime? _dateTime;
  // final TextEditingController dateinput = TextEditingController();
  final mothertongue = ["Any", "Tamil", "Englig", "Malayalam"];
  String? value;

    bool _hasBeenPressed = false;


  final religion = [
    "Hindu",
    "Christian",
    "Muslim",
    "Others",
  ];
  String? religionstatusvalue;

  final cast = [
    "Vanniyar",
    "Thevar",
    "Kongu Vellalar",
    "Others",
  ];
  String? caststatusvalue;

  final subcast = [
    "Vanniyar",
    "Thevar",
    "Kongu Vellalar",
    "Others",
  ];
  String? subcaststatusvalue;
  bool server1Selected= false;
  TextEditingController dateinput = TextEditingController();
  final TextEditingController _controller = TextEditingController();
  // final TextEditingController _age = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();
  String dropdownValue = 'One';
  String dropdownValue1 = '+91';
  String dropdownValue2 = '';
  String dropdownValue3 = '';
  String dropdownValue4 = '';
  String dropdownValue5 = '';
   String gender = "Male";
  String selectedValue = "1";
   String _age = "21";
  String createdfor = "Self";
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final style = const TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  final style1 = const TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  late FocusNode myFocusNode;
  late FocusNode femail;
  late FocusNode fpassword;
  late FocusNode fcaste;
  late FocusNode fsubcaste;
  late FocusNode fname;
  late FocusNode fmother;
  late FocusNode freligion;
  late FocusNode fcreatedfor;
  late FocusNode fgender;
  @override
  void initState() {
  myFocusNode = FocusNode();
  femail = FocusNode();
  fpassword = FocusNode();
  fcaste = FocusNode();
  fsubcaste = FocusNode();
  fname = FocusNode();
  fmother = FocusNode();
  freligion = FocusNode();
  fcreatedfor = FocusNode();
  fgender = FocusNode();
    setState(() {
      server1Selected= false;
     
    });
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return initWidget();
  }

  Widget initWidget() {
     final data =Provider.of<Data1>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100,
        title: Image.asset(
          "logo.png",
          width: 120,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 105, 17, 66),
                Color.fromARGB(255, 105, 17, 66),
              ])),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dashboard()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Color.fromARGB(255, 105, 17, 66),
                  Color.fromARGB(255, 105, 17, 66),
                ])),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("logo.png"),
                    ],
                  ),
                )),
            ListTile(
              title: const Text("Contact Us"),
              leading: const Icon(Icons.call),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Cantact()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Privacy"),
              leading: const Icon(Icons.lock),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Privacy()));
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Support"),
              leading: const Icon(Icons.support),
               onTap: () {
                                      Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Biodata())
                                    );
                                }
            ),
            const Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(35),
              height: 400,
              width: 50.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: const AssetImage("back1.png"), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    child: Text(
                      "Find Your Perfect Partner",
                      style: GoogleFonts.raleway(
                        textStyle: style,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        onPressed: () {
                           Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Login())
                                    );
                        },
                        color: const Color.fromARGB(255, 105, 17, 66),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Expanded(
                          child: const Text(
                        "All-Regions. All Community large Profile Collections",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ],
                  ),
                ],
              ),
            ),
            
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 10, 30.0, 10),
                child: Row(
                  
                  
                  children: <Widget>[
                    
                    Container(
                      child: const Text(
                        "Im looking for",
                        style:
                            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Radio(
                      value: "1",
                      groupValue: selectedValue,
                      onChanged: (value) => setState(() => selectedValue = "1"),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text("Bride",
                        style:
                            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Radio(
                      value: "2",
                      groupValue: selectedValue,
                      onChanged: (value) => setState(() => selectedValue = "2"),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text(
                      "Groom",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 25,
                    // top: 20,
                    // right: 40,
                    // bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Profile Created By",
                        style: GoogleFonts.montserrat(
                          textStyle: style1,
                        ),
                        
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 25,
                    // top: 20,
                    // right: 40,
                    // bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Select who is creating profile",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  
                  child: Column(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          customRadio('Self', 1),
                          customRadio('Parent', 2),
                          customRadio('Sibling', 3),
                          customRadio('Friend', 4),
                          customRadio('Relative', 5),
                         
                          // ignore: deprecated_member_use
                        
                        
                         
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 25,
                        // top: 20,
                        // right: 40,
                        // bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Gender",
                            style: GoogleFonts.montserrat(
                              textStyle: style1,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 25,
                        // top: 20,
                        // right: 40,
                        // bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Gender of the bride/groom",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  child: Column(
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        alignment: WrapAlignment.spaceEvenly,
                        spacing: 30,
                        runSpacing: 20,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              left: 25,
                              // top: 20,
                              // right: 40,
                              // bottom: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.center,

                              children: [

                                GendercustomRadio("Male", 1),
                                SizedBox(width:10),
                                GendercustomRadio("Female", 2),
                                
                               
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Name',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                          controller: _controller,
                          focusNode: fname,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: const OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: 'Enter Your Name',
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
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Date Of Birth',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: SizedBox(
                          // width: double.infinity,
                          width: 450,
                          height: 40,
                          child: ElevatedButton.icon(
                            label: Text(_dateTime == null
                                ? 'Choose Date'
                                : _dateTime.toString()),
                            icon: const Icon(Icons.date_range),
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2222),
                              ).then((date) {
                                setState(() {
                                  _dateTime = date!;
                                  dateinput.text=_dateTime.toString();
                                });
                              });
                            },
                          ),
                        ),
                      ),
                      // Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Container(
                      //       padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      //       child: (const Text('Age',
                      //           style: TextStyle(
                      //               fontSize: 16,
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.bold))),
                      //     )),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                      //   child: TextFormField(
                      //     controller: _age,
                      //     decoration: InputDecoration(
                      //       contentPadding:
                      //           EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                      //       fillColor: HexColor("dbd2e9"),
                      //       filled: true,
                      //       border: OutlineInputBorder(),
                      //       // labelText: 'Username',
                      //       hintText: 'Enter Your Age',
                      //       enabledBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(50),
                      //         borderSide: BorderSide(
                      //             color: HexColor("DFA7B2"), width: 0.2),
                      //       ),
                      //       focusedBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(50),
                      //         borderSide: BorderSide(
                      //             color: HexColor("DFA7B2"), width: 0.2),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Email',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                           controller: _email,
                           focusNode: femail,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: const OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: 'Enter Your Mail Id',
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
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Mobile Number',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                        focusNode: myFocusNode,
                         maxLength: 10,
                          controller: _phone,
                          
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: const OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: '10 digit number',
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
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Mother Tongue',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            color: HexColor('dbd2e9'),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('DFA7B2'), width: 0.2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            focusNode: fmother,
                            value: value,
                            hint: const Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Choose Mother Tongue",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
                            iconSize: 36,
                            dropdownColor: HexColor('dbd2e9'),
                            icon: Icon(Icons.arrow_drop_down,
                                color: HexColor('6d1140')),
                            focusColor: Colors.transparent,
                            isExpanded: true,
                            items: mothertongue.map(buildMenuItem).toList(),
                            onChanged: (value) {

                               setState(() => this.value = value as String?);
                               dropdownValue4=value as String;

                            }
                               
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Religion',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            color: HexColor('dbd2e9'),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('DFA7B2'), width: 0.2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            focusNode: freligion,
                            value: religionstatusvalue,
                            hint: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose Religion",
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
                            iconSize: 36,
                            dropdownColor: HexColor('dbd2e9'),
                            icon: Icon(Icons.arrow_drop_down,
                                color: HexColor('6d1140')),
                            focusColor: Colors.transparent,
                            isExpanded: true,
                            items: religion.map(buildMenuItem).toList(),
                            onChanged: (religionstatusvalue) {
setState(() =>
                                this.religionstatusvalue =
                                    religionstatusvalue as String?);
                                   dropdownValue5= religionstatusvalue as String;

                            } 
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Cast',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            color: HexColor('dbd2e9'),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('DFA7B2'), width: 0.2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            focusNode: fcaste,
                            value: caststatusvalue,
                            hint: const Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Choose Caste",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
                            iconSize: 36,
                            dropdownColor: HexColor('dbd2e9'),
                            icon: Icon(Icons.arrow_drop_down,
                                color: HexColor('6d1140')),
                            focusColor: Colors.transparent,
                            isExpanded: true,
                            items: cast.map(buildMenuItem).toList(),
                            onChanged: (caststatusvalue) {
                              setState(() => this
                                .caststatusvalue = caststatusvalue as String?);
                                dropdownValue2=caststatusvalue as String;
                            } 
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('Sub Caste',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            color: HexColor('dbd2e9'),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: HexColor('DFA7B2'), width: 0.2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: subcaststatusvalue,
                            focusNode: fsubcaste,
                            hint: const Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Choose Sub Caste",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
                            iconSize: 36,
                            dropdownColor: HexColor('dbd2e9'),
                            icon: Icon(Icons.arrow_drop_down,
                                color: HexColor('6d1140')),
                            focusColor: Colors.transparent,
                            isExpanded: true,
                            items: subcast.map(buildMenuItem).toList(),
                            onChanged: (subcaststatusvalue) {
                              setState(() =>
                                this.subcaststatusvalue =
                                    subcaststatusvalue as String?);
                                    dropdownValue3=subcaststatusvalue as String;
                            } 
                          ),
                        ),
                        
                      ),                     
                    
                       Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (const Text('PassWord',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))),
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                        child: TextFormField(
                          focusNode: fpassword,
                          obscureText: isHiddenPassword,
                          controller: _password,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                            fillColor: HexColor("dbd2e9"),
                            filled: true,
                            border: const OutlineInputBorder(),
                            // labelText: 'Username',
                            hintText: 'Enter Your password',
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: InkWell(
                              onTap: _tooglePasswordView,
                                
                                child: const Icon(Icons.visibility)),
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                 if(_isChecked1==false){
                              _isChecked1=true;
                            }else{
                              _isChecked1=false;
                            }

                            // print(_isChecked1);
                            }),
                        const SizedBox(
                          width: 2.0,
                        ),
                        const Text("I Accept the",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        // Radio(
                        //   value: 2,
                        //   groupValue: selectedValue,
                        //   onChanged: (value) =>
                        //       setState(() => selectedValue = 2),
                        // ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        // Text(
                        //   "Forgot Password?",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.bold),
                        // ),
                        GestureDetector(
                          child: const Text("Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 105, 17, 66))),
                          onTap: () {

                         
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Privacy()));
                          },
                        ),

                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),

                    const SizedBox(
                      height: 20,
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
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => VerifyOtp()));

// print(dropdownValue2);
// print(dropdownValue4);

if(createdfor==''){
 showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Created For'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
} else if(gender==''){
 showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Select Gender'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
}else if (_controller.text=='') {

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Enter Your Name'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
  fname.requestFocus();
} else if (_email.text=='') {

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Enter Your Email'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
   femail.requestFocus();
} else if(_phone.text==''){
  showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Enter Phone No'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
    myFocusNode.requestFocus();

} else if(dropdownValue4==''){

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Choose Your Mother Toungue'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
 fmother.requestFocus();
}else if (dropdownValue5=='') {

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Choose Religion'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
   freligion.requestFocus();
} else if (dropdownValue2==''){

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Choose Caste'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
   fcaste.requestFocus();
} else if (dropdownValue3==''){

  showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Choose SubCaste'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
fsubcaste.requestFocus();
} else if (_password.text=='') {

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Enter Your Password'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
  fpassword.requestFocus();
}else if(_isChecked1==false){
        showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Warning Alert!!'),
          content: const Text('Please Ensure Terms And Condition'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),
           
          ],
        ),
      );
           }else{

                data.fecthData(context, createdfor,_controller.text,gender,dropdownValue4,dropdownValue5,_phone.text,_email.text,_password.text,dropdownValue2,dropdownValue3,dateinput.text,_age,dropdownValue1,selectedValue);
           }
                  
                                },
                                color: const Color.fromARGB(255, 105, 17, 66),
                                textColor: Colors.white,
                                highlightColor: Colors.black,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                           
                                  child: const Text(
                                    "                                        Register Free                                        ",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                          // Container(
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: <Widget>[
                          //       Align(
                          //           alignment: Alignment.center,
                          //           child: Container(
                          //             padding:
                          //                 EdgeInsets.fromLTRB(20, 20, 10, 10),
                          //             child: (RichText(
                          //                 text: TextSpan(children: <TextSpan>[
                          //               TextSpan(
                          //                   text:
                          //                       "Your Information is 100% safe with us",
                          //                   style: TextStyle(
                          //                       color: Colors.black,
                          //                       fontSize: 16,
                          //                       fontWeight: FontWeight.bold)),
                          //             ]))),
                          //           )),
                          //       Align(
                          //           alignment: Alignment.center,
                          //           child: Container(
                          //             padding:
                          //                 EdgeInsets.fromLTRB(20, 20, 10, 10),
                          //             child: (RichText(
                          //                 text: TextSpan(children: <TextSpan>[
                          //               TextSpan(
                          //                   text: "T&C and Privacy policy",
                          //                   style: TextStyle(
                          //                       color: Colors.black,
                          //                       fontSize: 16,
                          //                       fontWeight: FontWeight.bold)),
                          //             ]))),
                          //           )),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ))
                    ],
                  ),
                )
              ]),
            )
          ],
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
 
DropdownMenuItem<String> buildMenuItem(String dropdownValue4) =>
    DropdownMenuItem(
      
      value: dropdownValue4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(dropdownValue4,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)
          
            ),
            
      ),
    );

DropdownMenuItem<String> religion(String dropdownValue5) => DropdownMenuItem(
      value: dropdownValue5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(dropdownValue5,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    );

DropdownMenuItem<String> cast(String dropdownValue2) => DropdownMenuItem(
      value: dropdownValue2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(dropdownValue2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    );

DropdownMenuItem<String> subcast(String dropdownValue3) => DropdownMenuItem(
      value: dropdownValue3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(dropdownValue3,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    );





Future <Otp>postData(BuildContext context, String createdFor,String name,String gender,String monthertongue,String religion,String mobileNo,String emailId,String password,String caste,String subCaste,String dob,String age,String code,String lookingfor) async{
  // List data1;
  final response = await http.post(
    Uri.parse('http://mobileapp.invites.live/api/otpstore'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'otp': "0000",
      'mobile_no': mobileNo,      
    }),
  );
//  final data = json.decode(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');

    Map mapValue = json.decode(response.body);
    print('Token value : ${mapValue.values.toString()}');

    Map<String, dynamic> data = json.decode(response.body);
    // return data;
    print('This, ${data['status']}');

    // print('let, ${data['password']}');
    var data1=data['status'];
    var data2=data['message'];
    var data3=data['phoneno'];

    // print(data1);

if(data1=="200"){ 

Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyOtp(todos: data2,phone1:data3,createdFor:createdFor,name:name,gender:gender,monthertongue:monthertongue,religion:religion,mobileNo:mobileNo,emailId:emailId,password:password,caste:caste,subCaste:subCaste,dob:dob,age:age,code:code,lookingfor:lookingfor)));

}else{
  
showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('User Alert'),
          content: Text('${data3} This Number Already Exist'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Close'),
            ),           
          ],
        ),
      );

}
 
  // final jsonn = jsonDecode(response.body) as List;

    // print(albumData.fromJson(jsonDecode(response.body)));

    return Otp.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }

  
}





