// ignore_for_file: deprecated_member_use

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Biodata extends StatefulWidget {
  const Biodata({ Key? key }) : super(key: key);

  @override
  State<Biodata> createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          isExtended: true,
              backgroundColor: HexColor('6d1140'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          icon: Icon(Icons.rocket_launch_sharp),
          label: Text('Send Proposal'),
          
        ),
      extendBodyBehindAppBar: true,
      
       appBar: AppBar(
        title:Text('Bio Data'),
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: HexColor('6d1140'),
         shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
                    
      ),

      body: SingleChildScrollView(
        child: Container(
          width:double.infinity,
          height:3010,
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
              SizedBox(height:200),
              Container(
                height: 150,
                width:double.infinity,
                
                decoration: BoxDecoration(
                            
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                ),
                child: Stack(
                  overflow:Overflow.visible,
                  children: [
                    Positioned(
                      left:65,
                      top:-55,
                      child: Container(
                        width:125,
                        height:125,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image:DecorationImage(
                            image: AssetImage('Profile1.jpg'),
                                          fit: BoxFit.fill,
                            )
                        )
                        ),
                    ),
                    Positioned(
                      left:230,
                      top:25,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('23 Years',textAlign: TextAlign.left,style:TextStyle(color: HexColor('6d1140'),fontWeight:FontWeight.bold,fontSize:14)),
                            SizedBox(height:7),
                            Text('Bride Name',textAlign: TextAlign.left,style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:18)),
                            SizedBox(height:7),
                            Text('Occupation',textAlign: TextAlign.left,style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:12)),
                            SizedBox(height:13),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: HexColor('6d1140'),
                                  child: 
                                  IconButton(onPressed: (){}, icon: Icon(Icons.call),color:Colors.white)),
                                  SizedBox(width:10),
                                CircleAvatar(
                                  backgroundColor: HexColor('6d1140'),
                                  child: 
                                  IconButton(onPressed: (){}, icon: Icon(Icons.message),color:Colors.white)),
                                  SizedBox(width:10),
                                  CircleAvatar(
                                  backgroundColor: HexColor('6d1140'),
                                  child: 
                                  IconButton(onPressed: (){}, icon: Icon(Icons.report,color:Colors.white)),)
                              ],
                            )
                            
                          ],
                        ),
                      ),
                    ),
                      
                  ],
                ),
              ),
              Container(
                
                color:Colors.white,
                width:double.infinity,
                child: 
                Column(
                  children: [
                    SizedBox(height:25),
                    Text('About Herself',textAlign: TextAlign.center,style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:18)),
                    SizedBox(height:15),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',textAlign: TextAlign.left,style:TextStyle(color:Colors.black,fontSize:13),
                      ),
                    ),
                    SizedBox(height:20),
                    Text('Basic Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20),
                                          Container(
                                            height: 530,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Religious Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20),
                    Container(
                                            height: 180,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Location Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20),     
                                           Container(
                                            height: 180,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Professional Information',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20), 
                    Container(
                                            height: 340,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Father’s Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20), 
                    Container(
                                            height: 100,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Mother’s Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20), 
                    Container(
                                            height: 100,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Sibling’s Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
                    SizedBox(height:20), 
                    Container(
                                            height: 100,
                                            margin:EdgeInsets.fromLTRB(25, 0, 25, 0),
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
                    Text('Horoscope Details',textAlign:TextAlign.start,style:TextStyle(color:HexColor('000000'),fontWeight: FontWeight.bold,fontSize:18)),
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