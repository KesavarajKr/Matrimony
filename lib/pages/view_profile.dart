// ignore_for_file: deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'dashboard.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({ Key? key }) : super(key: key);

  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                          
                          gradient: LinearGradient(
                        colors: [
                          HexColor('cbc2d9'),
                          HexColor('cf97a2')
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                                      ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      height: 150,
                      color:HexColor('6d1140'),
                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children : [
                                            IconButton(
                                              onPressed: (){
                                                Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Dashboard())
                                    );
                                              },
                                              icon: Icon(Icons.arrow_forward_ios_outlined),
                                              iconSize:25,
                                              color:Colors.white
                                            ),
                                             IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.settings),
                                              iconSize:25,
                                              color:Colors.white
                                            ),
                                          ],
                                        ),
                    ),
                    Positioned(
                      top:85,
                      child: Container(
                                        height: 150,
                                        width:150,
                                        decoration: BoxDecoration(
                                              border: Border.all(color: HexColor('98803b'),width: 4.0),
                                      borderRadius: BorderRadius.circular(100),
                                      image: new DecorationImage(
                      image: new AssetImage("assets/profile1.jpg"),
                      fit: BoxFit.fill,
                  )
                            
                      ),
                      
                                      ),
                    ),
                        Positioned(
                          left:290 ,
                          top: 170,
                          child: Container(
                                    width:45,
                                    height: 45,
                                    
                                     decoration: BoxDecoration(
                                       border: Border.all(color: HexColor('6d1140'),width: 2.0),
                          borderRadius: BorderRadius.circular(100),
                          
                          gradient: LinearGradient(
                        colors: [
                          HexColor('cbc2d9'),
                          HexColor('cf97a2')
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                                      ),
                                  child: Icon(Icons.image,color: HexColor('6d1140'),),    
                          
                          ),
                        )
                    
                  ],
                  
                ),
                SizedBox(height: 100),
                Container(
                  child: Column(
                    children: [
                      Container(
                        
                        child: Text('KESAVARAJ S',style:TextStyle(color:HexColor('6d1140'),fontWeight: FontWeight.bold,fontSize:25)),
                      )
                    ],
                  ),
                ),
                SizedBox(height:15),
                Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children : [
                                            
                                            Text('AGE : 25',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('ID : VAR1902202201',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18))
                                          ],
                                        ),
                                        SizedBox(height: 35),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(35, 25, 35, 25),
                                          decoration: BoxDecoration(
                                              
                                      borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
          
              ),
              color:Colors.white
                                      
                            
                      ),
                                          child: 
                                          Column(
                                            children: [
                                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('About Myself',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                        Container(
                                            height: 170,
                                            padding: EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                              child: 
                                              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',style:TextStyle(fontSize:15)),
                                            ),
                                            SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Basic Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                        Container(
                                          height: 540,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Name',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Kesavaraj',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Body Type',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Medium',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Physical Status',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Physical Status',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Date Of Birth',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('01-06-1996',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Age',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('25',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Complexion',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Complexion',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Height',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Height',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Marital Status',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Unmarried',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('No. of Children',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('No',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                                SizedBox(height: 10),
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Gender',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Male',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Mobile Number',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('+91-1234567890',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Whatsapp Number',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('+91-1234567890',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('E-mail',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('test@gmail.com',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                              ],
                                            )
                                            ),
                                         SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Religious Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                          Container(
                                          height: 180,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Religion',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Christian',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Caste',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Caste',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Sub Caste',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Sub Caste',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Star',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('05-05-1997',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                                
                                              ],
                                            )
                                            ),
                                             SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Location Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                         Container(
                                          height: 180,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Communication Address',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Full Address',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Country',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('India',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('State',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Tamilnadu',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('District',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Kanyakumari',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                                
                                              ],
                                            )
                                            ),
                                             SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Professional Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                        Container(
                                          height: 340,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Education',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Education',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Education In Details',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Details',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Catagory',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Catagory',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job In Details',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Details',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Location (Country)',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('India',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Location (State)',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Tamilnadu',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Location (District)',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Coimbatore',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Location (City)',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Coimbatore',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 
                                               
                                                
                                                 
                                                
                                                
                                              ],
                                            )
                                            ),
                                               SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Father’s Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                        Container(
                                          height: 100,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Name',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Name',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Detail',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Job Detail',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                              ],
                                            )
                                            ),
                                            SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Mothers Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                         SizedBox(height:20),
                                        Container(
                                          height: 100,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Name',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Name',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Detail',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Job Detail',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 
                                               
                                                
                                                 
                                                
                                                
                                              ],
                                            )
                                            ),
                                         SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Sibling’s Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          height: 100,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Name',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Name',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Detail',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Job Detail',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 
                                               
                                                
                                                 
                                                
                                                
                                              ],
                                            )
                                            ),
                                             SizedBox(height:20),
                                            Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Horoscope Details',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                             SizedBox(height:20),

                                             Container(
                                               height:250,
                                               decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/profile1.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
                                             ),
                                             SizedBox(height:20),
                                             Container(
                                               height:250,
                                               decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/profile1.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
                                             ),
                                             SizedBox(height:20),
                                              Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children : [
                                            
                                            Text('Partner preferences',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                                            Text('Edit',style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:12)),
                                            
                                          ],
                                        ),
                                        SizedBox(height:20),
                                        Container(
                                          height: 660,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                                border: Border.all(color: HexColor('6d1140'),width: 1.0),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Partner’s Age',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Age',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Partner’s Height',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Medium',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Body Type',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Physical Status',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Complexion',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Complexion',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Marital status',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Single',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Education Catagory',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Education',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Education Details',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Education',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Catagory',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Job Catagory',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                               
                                                
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Job Details',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Job Details',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                                SizedBox(height: 10),
                                                 
                                                SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Religion',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Hindu',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                const SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Caste',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Caste',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Sub Caste',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Sub Caste',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Country',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Country',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('State',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('State',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('District',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('District',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                 SizedBox(height: 10),
                                                 SizedBox(
                                                  height: 1,
                                                  width:double.infinity,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color:HexColor('cccccc')
                                                    ),

                                                  ),
                                                  
                                                ),
                                                SizedBox(height: 10),
                                                 Row(
                                                  
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Location',style:TextStyle(color:HexColor('6d1140'),fontSize:15,fontWeight: FontWeight.bold)),
                                                    Text('Location',style:TextStyle(color:HexColor('000000'),fontSize:15,fontWeight: FontWeight.bold)),
                                                  ],
                                                ),
                                                
                                              ],
                                            )
                                            ),
                                            ],
                                          ),
                                        )
                
              ],
            ),
            
          ),
        ),
        
        
    );
  }
}