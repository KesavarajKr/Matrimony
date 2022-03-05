import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:varan_matrimony/modal/opt.dart';
import 'package:varan_matrimony/modal/otpregister.dart';

import 'package:varan_matrimony/pages/Verify_Phone.dart';
import 'package:varan_matrimony/modal/register.dart';



class Data1 extends ChangeNotifier{

  late Otp albumData1;

  fecthData(context, createdFor, name, gender, monthertongue, religion, mobileNo, emailId, password, caste, subCaste, dob, age, code, lookingfor) async{
     
    albumData1=await postData(context, createdFor, name, gender, monthertongue, religion, mobileNo, emailId, password, caste, subCaste, dob, age, code, lookingfor);
    
    notifyListeners();

    
  }

late Otpcheck albumData2;
    fecthData1(context, otp, createdFor, name, gender, monthertongue, religion, mobileNo, emailId, password, caste, subCaste, dob, age, code, lookingfor) async{
     
    albumData2=await postData1(context, otp, createdFor, name, gender, monthertongue, religion, mobileNo, emailId, password, caste, subCaste, dob, age, code, lookingfor);
    
    notifyListeners();

    
  }
  
 late Otp albumData3;

  fecthData2(context, otp,phone) async{
     
    albumData3=await postData2(context, otp,phone);
    
    notifyListeners();

    
  }

}




