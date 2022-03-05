import 'dart:convert';
import 'package:flutter/scheduler.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:varan_matrimony/modal/otpregister.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:quiver/async.dart';
import 'package:varan_matrimony/pages/dashboard.dart';
import 'data.dart';
import 'dart:async';
import 'package:quiver/time.dart';


import 'package:varan_matrimony/modal/opt.dart';


class VerifyOtp extends StatefulWidget {

   final String todos;
  final String phone1;
  final String createdFor;
   final String name;
    final String gender;
     final String monthertongue;
      final String religion;
       final String mobileNo;
        final String emailId;
         final String password;
         final String caste;
         final String subCaste;
         final String dob;
         final String age;
         final String code;
         final String lookingfor;

 const VerifyOtp({Key? key,required this.todos,required this.phone1,required this.createdFor,required this.name,required this.gender,required this.monthertongue,required this.religion,required this.mobileNo,required this.emailId,required this.password,required this.caste,required this.subCaste,required this.dob,required this.age,required this.code,required this.lookingfor}) : super(key: key);  
 @override
  InitState createState() => InitState(createdFor: this.createdFor,name: this.name,gender: this.gender,monthertongue: this.monthertongue,religion:this.religion,mobileNo:this.mobileNo,emailId:this.emailId,password:this.password,caste:this.caste,subCaste:this.subCaste,dob:this.dob,age:this.age,code:this.code,lookingfor:this.lookingfor);
}

class InitState extends State<VerifyOtp> {

  String createdFor;
  String name;  
  String gender;
  String monthertongue;
  String religion;  
  String mobileNo; 
  String emailId;
  String password;
  String caste;
  String subCaste;
  String dob;
  String age;
  String code;
  String lookingfor;
  
  InitState({required this.createdFor, required this.name, required this.gender,required this.monthertongue,required this.religion,required this.mobileNo,required this.emailId,required this.password,required this.caste,required this.subCaste,required this.dob,required this.age,required this.code,required this.lookingfor});

  final style = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );



@override
  void initState() {    
   //set the initial value of text field
    super.initState();
    startTimer();
  }
final TextEditingController _otp = TextEditingController();

int _start = 15;
int _current = 15;
String _sec="";

void startTimer() {
  CountdownTimer countDownTimer = new CountdownTimer(
    new Duration(seconds: _start),
    new Duration(seconds: 1),
  );

  var sub = countDownTimer.listen(null);
  sub.onData((duration) {
    setState(() { _current = _start - duration.elapsed.inSeconds; 
    if(_current>=10){
    _sec=_current.toString();
    }else{
    _sec=_current.toString();
    _sec='0'+_sec;
    }
   
    
    });
  });

  sub.onDone(() {

    final snackBar = SnackBar(
            content: const Text('Otp Time Out'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // print("Done");
    sub.cancel();
    
  });
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
        title: Text("Verify Phone"),
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
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: new ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/back1.png")),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Code is send to ${widget.code} ${widget.phone1}",
                        style: GoogleFonts.montserrat(
                          textStyle: style,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 200.0,
                    child: TextFormField(
                      controller: _otp,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.white70)),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                              child: (RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: "Don’t recieved code ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: "Send Again",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ]))),
                            )),
                        Container(
                          child: TextButton(
                              onPressed: () {
                               startTimer();
                               data.fecthData2(context,_otp.text,mobileNo);
                              },
                              child: Text(
                                "Send OTP",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 105, 17, 66)),
                              )),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: (
                              RichText(
                                text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Code in 00:$_sec''s',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ]))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: RaisedButton(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              onPressed: () {
                                data.fecthData1(context,_otp.text,createdFor,name,gender,monthertongue,religion,mobileNo,emailId,password,caste,subCaste,dob,age,code,lookingfor);
                              },
                              color: Color.fromARGB(255, 105, 17, 66),
                              textColor: Colors.white,
                              highlightColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              child: Text(
                                "     Verify and Create Account     ",
                                style: TextStyle(fontSize: 16),
                              )),
                        ),
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

  // inputFile({required String label}) {}
}

Future <Otpcheck>postData1(BuildContext context, String otp,String createdFor,String name,String gender,String monthertongue,String religion,String mobileNo,String emailId,String password,String caste,String subCaste,String dob,String age,String code,String lookingfor) async{
  // List data1;

  final response = await http.post(
    Uri.parse('http://mobileapp.invites.live/api/otpcheck'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'otp': otp,
      'mobile_no': mobileNo,
      'created_for': createdFor,
      'Name': name,
      'Gender': gender,
      'Monther_tongue': monthertongue,
      'Religion': religion,
      'email_id': emailId,
      'password': password,
      'Caste': caste,
      'sub_caste': subCaste,
      'dob': dob,
      'age': age,
      'mobileno_code': code,
      'looking_for': lookingfor,
      
    }),
  );

  
//  final data = json.decode(response.body);
  if (response.statusCode == 200) {
    print(response.body);
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
   
    print(data1);
if(data1=="200"){

  //  showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       title: Row(
  //         children:[
            
  //           Text('Success Message')
  //           ]
  //         ),
  //       content: Text("Register Completed !!"),
  //       actions: <Widget>[         
 
  //         TextButton(
  //             onPressed: () {
  //               Navigator.pop(context, 'Cancel');
  //               // Navigator.push(context, MaterialPageRoute(builder: (context) => ScanScreen3(todos: name)));
               
  //             },
  //             child: const Text('Close'),
  //           ),
  //       ],
  //     );
  //    },
  //   );
// SchedulerBinding.instance?.addPostFrameCallback((_) {
//   Navigator.of(context).pushNamed("Dashboard");
// });
Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
}else{
final snackBar = SnackBar(
            content: const Text('Invalid Otp'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
    return Otpcheck.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}



Future <Otp>postData2(BuildContext context, String otp,String phone) async{
  // List data1;
  final response = await http.post(
    Uri.parse('http://mobileapp.invites.live/api/otpstore'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'otp': "0000",
      'mobile_no': phone,      
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

// Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyOtp(todos: data2,phone1:data3,createdFor:createdFor,name:name,gender:gender,monthertongue:monthertongue,religion:religion,mobileNo:mobileNo,emailId:emailId,password:password,caste:caste,subCaste:subCaste,dob:dob,age:age,code:code,lookingfor:lookingfor)));

}else{
  


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