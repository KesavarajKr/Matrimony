// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pages/custom_widget.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';



class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  get nameController => null;

  get MobileNoController => null;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            FormFields(formtext: 'Mobile No', hintText: 'Enter Mobile',textcontroller: MobileNoController),
            FormFields(formtext: 'Name', hintText: 'Enter Name',textcontroller: nameController),
            FormFields(formtext: 'Email', hintText: 'Enter E-mail ID',textcontroller: null),
            
           Buttons(btnText: 'Submit Button', onBtnPressed: (){}, LeftPadding: 100.0, bottomPadding: 25.0, rightPadding: 100.0, topPadding: 25.0,colorOne: '6D1140',colorTwo: '6D1140',btnTextColor: 'ffffff',fontsize: 10.0,),

           Buttons(btnText: 'Reset Button', onBtnPressed: (){}, LeftPadding: 50.0, bottomPadding: 20.0, rightPadding: 50.0, topPadding: 20.0,colorOne: '6D1140',colorTwo: '6D1140',btnTextColor: 'ffffff',fontsize: 10.0,)
           
           
          ],

        ),
        
        
      
      );
  }
}

