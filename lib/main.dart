import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:varan_matrimony/pages/dashboard.dart';
import 'package:varan_matrimony/pages/dashboard.dart';
import 'package:varan_matrimony/pages/login_screen.dart';
import 'package:varan_matrimony/pages/profile_completeness.dart';
import 'pages/data.dart';
import 'package:provider/provider.dart';

import 'Register.dart';

void main() {
    runApp(MultiProvider(
    providers: [ChangeNotifierProvider <Data1>(create: (_)=> Data1())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.green,
        
      ),
      home: 
       Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/indian_bride.jpg'),
             fit: BoxFit.cover,

           ),
         ),
        child: 
          Container(
                  
            child: Stack(
              
              alignment: Alignment.bottomLeft,
              children:[
                Container(
                width: double.infinity,
                height: 200,
                // color:Colors.blue,
                 decoration: BoxDecoration(
                color:HexColor("6D1140").withOpacity(0.8),
                 
                
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(50),
                          topRight:Radius.circular(50),
                          
                        )),
                        
                child: 
                AnimatedSplashScreen(
                duration: 3000,
                splash: Container(
                  
                  child:  Image(
                //  image:AssetImage('assets/LOGO_for App.PNG')
                   image: AssetImage('assets/LOGO_for_App.png'),
                   ),
                   
                ),
                
                splashTransition: SplashTransition.fadeTransition,
                backgroundColor: Colors.transparent,
                
                nextScreen: LoginScreen(),
                
            ),
            
                // Image(
                //   // image:AssetImage('assets/LOGO_for App.PNG')
                //   image: AssetImage('LOGO_for_App.png'),
                //   ),
              ),
              ],
            ),
          )
       ),
       
      );
    
  }
}

