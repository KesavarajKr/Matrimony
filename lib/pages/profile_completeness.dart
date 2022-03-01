import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:varan_matrimony/pages/partner_preference.dart';
import 'package:varan_matrimony/pages/professional_info.dart';
import 'package:varan_matrimony/pages/religion_info.dart';

import 'about_myself.dart';
import 'basic_details.dart';
import 'family_details.dart';
import 'horoscope_details.dart';
import 'location_details.dart';

class ProfileCompleteness extends StatefulWidget {
  const ProfileCompleteness({ Key? key }) : super(key: key);

  @override
  _ProfileCompletenessState createState() => _ProfileCompletenessState();
}

class _ProfileCompletenessState extends State<ProfileCompleteness> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Text('Profile Completeness'),
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
                        Card(
                          margin:EdgeInsets.all(20.0),
                          elevation: 10.0,
                          
                          shape: RoundedRectangleBorder(
                                              side: BorderSide(color: Colors.transparent, ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              child: Container(
                                width:double.infinity,
                                height: 120,
                                margin:EdgeInsets.all(15),
                                child: Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("75%",style:TextStyle(fontSize: 55.0,fontWeight: FontWeight.bold,color: HexColor('6d1140'))),
                                    
                                    Container(
                                      margin: EdgeInsets.all(15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Profile Completeness',style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                                          
                                          
                                        ],
                                      ),
                                    )                              
            
                                  ],
                                ),
                                ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
            
                            
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.favorite,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("About Myself",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
                                        
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                      Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => AboutMyself())
                                    );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.image,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Manage Photos",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  print("Kesavan1");
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.text_snippet,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Basic Details",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => BasicDetails())
                                    );
                                },
                              )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
            
                            
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.book_rounded,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Religion    Information",textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ReligionInfo())
                                    );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.location_on_outlined,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Location",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
                                        
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => LocationDetails())
                                    );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.work,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Professional Information",textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ProfessionalInfo())
                                    );
                                },
                              )
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
            
                            
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.family_restroom,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Family Details",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => FamilyDetails())
                                    );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.people_rounded,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Partner    Preferences",textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => PartnerPreference())
                                    );
                                },
                              ),
                              InkWell(
                                child: Container(
                                  
                                  height: 120,
                                  width:120,
                                  child: Card(
                                    elevation: 10.0,
                                     shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.transparent, ),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star_border,color:HexColor('6d1140'),size:35.0),
                                        SizedBox(height:10.0),
                                        Text("Horoscope        Details",textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0))
                                      ],
                                    ),
                                  ),
                                                           ),
                                                           onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => HoroscopeDetails())
                                    );
                                },
                              )
                          ]),
                        ),
                        SizedBox(height:150)
                      ],
                    ),
        ),
      ),
      
    );
  }
}