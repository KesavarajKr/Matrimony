import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_widget.dart';

class PartnerPreference extends StatefulWidget {
  const PartnerPreference({ Key? key }) : super(key: key);

  @override
  _PartnerPreferenceState createState() => _PartnerPreferenceState();
}

class _PartnerPreferenceState extends State<PartnerPreference> {
  @override

  final Heightitem = ["4ft 0in - 121cms","4ft 1in - 124cms","4ft 2in - 127cms","4ft 3in - 130cms","4ft 4in - 133cms","4ft 5in - 136cms","4ft 6in - 139cms","4ft 7in - 142cms","4ft 8in - 145cms","4ft 9in - 148cms","5ft 0in - 151cms","5ft 1in - 154cms","5ft 2in - 157cms","5ft 3in - 160cms","5ft 4in - 163cms","5ft 5in - 167cms","5ft 6in - 170cms","5ft 7in - 173cms","5ft 8in - 176cms","5ft 9in - 179cms","6ft 0in - 182cms","6ft 1in - 185cms"];
  String? heightValue;

  final bodytype = ["Any","Medium","Thin","Fat"];
  String? value;

  final complexion = ["Any","Medium","Fair","Very Dair"];
  String? complexionValue;

  final maritalStatus = ["Never Married","Widowed","Widower","Waiting for Legal Divorce","Divorced","Seperated","Nikah Dropped"];
  String? maritalStatusvalue;
  
  final EducationDetails = ["Any","Medium","Thin","Fat"];
  String? Educationvalue;

  final jobcategoryDetails = ["Any","Medium","Thin","Fat"];
  String? jobcategoryvalue;

  final ReligionDetails = ["Any","Medium","Thin","Fat"];
  String? religionvalue;

  final CasteDetails = ["Any1","Medium1","Thin1","Fat1"];
  String? castevalue;

  final SubcasteDetails = ["Any2","Medium2","Thin2","Fat2"];
  String? subcastevalue;

  final CountryDetails = ["Any","Medium","Thin","Fat"];
  String? Countryvalue;

  final StateDetails = ["Any1","Medium1","Thin1","Fat1"];
  String? Statevalue;

  final DistrictDetails = ["Any2","Medium2","Thin2","Fat2"];
  String? Districtvalue;

  final MunicipalDetails = ["Any3","Medium3","Thin3","Fat3"];
  String? Municipalvalue;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:const Text('Partner Preference'),
        toolbarHeight: 100.0,
        backgroundColor: HexColor('6d1140'),
         shape: const RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
                    
      ),
      body:SingleChildScrollView(
        child: Container(
            margin:EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                  child: Text('Basic Preferences',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0,),
                Container(
                  padding:EdgeInsets.fromLTRB(15, 15, 15, 0),
                  margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     border:Border.all(color:HexColor('DFA7B2'),width:1)
                                   ),
                                   child: 
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                           SizedBox(
                                             width: 180,

                                             child: Column(
                                               children: [
                                                  Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Partner’s Age',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                       margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                       child: TextFormField( 
                         keyboardType: TextInputType.number,
                        //  controller: nameController,
                      decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      
                        fillColor: HexColor("dbd2e9"),
                        filled: true,
                        border: OutlineInputBorder(),
                        // labelText: 'Username',
                        hintText: 'From',
                      enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
        
          ),
           focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                         ),
        ),
        
            ),
                     ),

                                               ],
                                             ),
                                           ),
                                           SizedBox(
                                             width: 200,

                                             child: Column(
                                               children: [
                                                  Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text(' ',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                       margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                       child: TextFormField( 
                         keyboardType: TextInputType.number,
                        //  controller: nameController,
                      decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      
                        fillColor: HexColor("dbd2e9"),
                        filled: true,
                        border: OutlineInputBorder(),
                        // labelText: 'Username',
                        hintText: 'To',
                      enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
        
          ),
           focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                         ),
        ),
        
            ),
                     ),

                                               ],
                                             ),
                                           ),
                                          
                         
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                           SizedBox(
                                             width: 180,

                                             child: Column(
                                               children: [
                                                  Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Partner’s Height',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 0),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: heightValue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: Heightitem.map(heightDetails).toList(),
                         onChanged: (heightValue) => setState(()=>this.heightValue = heightValue as String?),
                         ),
                     ),
                   ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         

                                               ],
                                             ),
                                           ),
                                          SizedBox(
                                             width: 180,
                                              
                                             child: Column(
                                               children: [
                                                  Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text(' ',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 0),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: heightValue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: Heightitem.map(heightDetails).toList(),
                         onChanged: (heightValue) => setState(()=>this.heightValue = heightValue as String?),
                         ),
                     ),
                   ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         

                                               ],
                                             ),
                                           ),
                         
                                     
                                        ],
                                      ),
                                       Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                             child: (
                               Text('Body Type',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: value,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: bodytype.map(buildMenuItem).toList(),
                         onChanged: (value) => setState(()=>this.value = value as String?),
                         ),
                     ),
                   ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Complexion',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: complexionValue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: complexion.map(complexionItem).toList(),
                         onChanged: (complexionValue) => setState(()=>this.complexionValue = complexionValue as String?),
                         ),
                     ),
                   ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Marital Status',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: maritalStatusvalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: maritalStatus.map(MatritalDetails).toList(),
                         onChanged: (maritalStatusvalue) => setState(()=>this.maritalStatusvalue = maritalStatusvalue as String?),
                         ),
                     ),
                   ),
                         
                                     
                                    ],
                                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                  child: Text('Profesional Preferences',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(15, 15, 15, 0),
                  margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                  height: 460,
                  width: double.infinity,
                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     border:Border.all(color:HexColor('DFA7B2'),width:1)
                                   ),
                                   child: 
                                  Column(
                                    children: [
                                    
                                     
                                       Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                             child: (
                               Text('Education Category',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                         margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                         padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                         decoration: BoxDecoration(
                           color:HexColor('dbd2e9'),
                           borderRadius: BorderRadius.circular(50),
                           border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                         ),
                         child: DropdownButtonHideUnderline(
                           child: DropdownButton(
                             value: Educationvalue,
                             iconSize:36,
                             
                             dropdownColor: HexColor('dbd2e9'),
                             icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                             focusColor: Colors.transparent,
                             isExpanded: true,
                             items: EducationDetails.map(EducationItem).toList(),
                             onChanged: (Educationvalue) => setState(()=>this.Educationvalue = Educationvalue as String?),
                             ),
                         ),
                       ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Education In Detail',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                       margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                       child: TextFormField( 
                         
                        //  controller: nameController,
                      decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      
                        fillColor: HexColor("dbd2e9"),
                        filled: true,
                        border: OutlineInputBorder(),
                        // labelText: 'Username',
                        hintText: 'Type Here...',
                      enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
        
          ),
           focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                         ),
        ),
        
            ),
                     ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Job Category',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                         margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                         padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                         decoration: BoxDecoration(
                           color:HexColor('dbd2e9'),
                           borderRadius: BorderRadius.circular(50),
                           border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                         ),
                         child: DropdownButtonHideUnderline(
                           child: DropdownButton(
                             value: jobcategoryvalue,
                             iconSize:36,
                             
                             dropdownColor: HexColor('dbd2e9'),
                             icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                             focusColor: Colors.transparent,
                             isExpanded: true,
                             items: jobcategoryDetails.map(JobCategoryItem).toList(),
                             onChanged: (jobcategoryvalue) => setState(()=>this.jobcategoryvalue = jobcategoryvalue as String?),
                             ),
                         ),
                       ),
                         Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Job Details',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                       margin:EdgeInsets.fromLTRB(10, 5, 10, 10),
                       child: TextFormField( 
                         
                        //  controller: nameController,
                      decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      
                        fillColor: HexColor("dbd2e9"),
                        filled: true,
                        border: OutlineInputBorder(),
                        // labelText: 'Username',
                        hintText: 'Type Here...',
                      enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"),width:0.2),
        
          ),
           focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(50),
                           borderSide: BorderSide(color: HexColor("DFA7B2"), width: 0.2),
                         ),
        ),
        
            ),
                     ),
                                     
                                    ],
                                  )
                ),
               
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                  child: Text('Religious Preferences',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
                ),

                 Container(
                  padding:EdgeInsets.fromLTRB(15, 15, 15, 0),
                  margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                  height: 370,
                  width: double.infinity,
                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     border:Border.all(color:HexColor('DFA7B2'),width:1)
                                   ),
                                   child: 
                                  Column(
                                    children: [
                                    
                                     
                                       Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                             child: (
                               Text('Religion',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: religionvalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: ReligionDetails.map(ReligionItem).toList(),
                         onChanged: (religionvalue) => setState(()=>this.religionvalue = religionvalue as String?),
                         ),
                     ),
                   ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Caste',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: castevalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: CasteDetails.map(CasteItem).toList(),
                         onChanged: (castevalue) => setState(()=>this.castevalue = castevalue as String?),
                         ),
                     ),
                   ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Sub Caste',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                     margin:EdgeInsets.fromLTRB(15, 10, 15, 30),
                     padding: EdgeInsets.symmetric(horizontal: 4,vertical :1),
                     decoration: BoxDecoration(
                       color:HexColor('dbd2e9'),
                       borderRadius: BorderRadius.circular(50),
                       border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                     ),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton(
                         value: subcastevalue,
                         iconSize:36,
                         
                         dropdownColor: HexColor('dbd2e9'),
                         icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                         focusColor: Colors.transparent,
                         isExpanded: true,
                         items: SubcasteDetails.map(CasteItem).toList(),
                         onChanged: (subcastevalue) => setState(()=>this.subcastevalue = subcastevalue as String?),
                         ),
                     ),
                   ),
                       
                                     
                                    ],
                                  )
                ),
               
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10.0),
                  child: Text('Location Preferences',style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
                ),
                 Container(
                  padding:EdgeInsets.fromLTRB(15, 15, 15, 0),
                  margin:EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     border:Border.all(color:HexColor('DFA7B2'),width:1)
                                   ),
                                   child: 
                                  Column(
                                    children: [
                                    
                                     
                                       Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                             child: (
                               Text('Country',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                       decoration: BoxDecoration(
                         color:HexColor('dbd2e9'),
                         borderRadius: BorderRadius.circular(50),
                         border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                       ),
                       child: DropdownButtonHideUnderline(
                         child: DropdownButton(
                           value: Countryvalue,
                           iconSize:36,
                           
                           dropdownColor: HexColor('dbd2e9'),
                           icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                           focusColor: Colors.transparent,
                           isExpanded: true,
                           items: CountryDetails.map(CountryItem).toList(),
                           onChanged: (Countryvalue) => setState(()=>this.Countryvalue = Countryvalue as String?),
                           ),
                       ),
                     ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('State',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                        Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                       decoration: BoxDecoration(
                         color:HexColor('dbd2e9'),
                         borderRadius: BorderRadius.circular(50),
                         border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                       ),
                       child: DropdownButtonHideUnderline(
                         child: DropdownButton(
                           value: Statevalue,
                           iconSize:36,
                           
                           dropdownColor: HexColor('dbd2e9'),
                           icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                           focusColor: Colors.transparent,
                           isExpanded: true,
                           items: StateDetails.map(StateItem).toList(),
                           onChanged: (Statevalue) => setState(()=>this.Statevalue = Statevalue as String?),
                           ),
                       ),
                     ),
                    Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('District',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                       decoration: BoxDecoration(
                         color:HexColor('dbd2e9'),
                         borderRadius: BorderRadius.circular(50),
                         border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                       ),
                       child: DropdownButtonHideUnderline(
                         child: DropdownButton(
                           value: Districtvalue,
                           iconSize:36,
                           
                           dropdownColor: HexColor('dbd2e9'),
                           icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                           focusColor: Colors.transparent,
                           isExpanded: true,
                           items: DistrictDetails.map(DistrictItem).toList(),
                           onChanged: (Districtvalue) => setState(()=>this.Districtvalue = Districtvalue as String?),
                           ),
                       ),
                     ),
                     Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                             child: (
                               Text('Location',
                               style: TextStyle(
                               fontSize: 13,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                         Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 8,vertical :4),
                       decoration: BoxDecoration(
                         color:HexColor('dbd2e9'),
                         borderRadius: BorderRadius.circular(50),
                         border:Border.all(color:HexColor('DFA7B2'),width:0.2)
                       ),
                       child: DropdownButtonHideUnderline(
                         child: DropdownButton(
                           value: Municipalvalue,
                           iconSize:36,
                           
                           dropdownColor: HexColor('dbd2e9'),
                           icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                           focusColor: Colors.transparent,
                           isExpanded: true,
                           items: MunicipalDetails.map(MunicipalItem).toList(),
                           onChanged: (Municipalvalue) => setState(()=>this.Municipalvalue = Municipalvalue as String?),
                           ),
                       ),
                     ),
                       
                                     
                                    ],
                                  )
                ),
              
                 Row(
                       
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Buttons(btnText: 'Cancel', onBtnPressed: (){}, LeftPadding: 45.0, bottomPadding: 10.0, rightPadding: 45.0, topPadding: 10.0, colorOne: '6d1140', colorTwo: '6d1140', btnTextColor: 'ffffff', fontsize: 16.0),
                         Buttons(btnText: 'Save', onBtnPressed: (){}, LeftPadding: 45.0, bottomPadding: 10.0, rightPadding: 45.0, topPadding: 10.0, colorOne: 'c6a972', colorTwo: 'a8803b', btnTextColor: 'ffffff', fontsize: 16.0),
                       ],
                     )
              ],
            ),
          ),
      ),
    );
  }
}


DropdownMenuItem<String> heightDetails(String heightValue) => DropdownMenuItem(
  value:heightValue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        heightValue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> buildMenuItem(String bodytype) => DropdownMenuItem(
  value:bodytype,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        bodytype,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> complexionItem(String complexionValue) => DropdownMenuItem(
  value:complexionValue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        complexionValue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );
  DropdownMenuItem<String> MatritalDetails(String maritalStatusvalue) => DropdownMenuItem(
  value:maritalStatusvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        maritalStatusvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );
  DropdownMenuItem<String> EducationItem(String Educationvalue) => DropdownMenuItem(
  value:Educationvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Educationvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> JobCategoryItem(String jobcategoryvalue) => DropdownMenuItem(
  value:jobcategoryvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        jobcategoryvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );
DropdownMenuItem<String> ReligionItem(String religionvalue) => DropdownMenuItem(
  value:religionvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        religionvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> CasteItem(String castevalue) => DropdownMenuItem(
  value:castevalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        castevalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> SubcasteItem(String subcastevalue) => DropdownMenuItem(
  value:subcastevalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        subcastevalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );
  DropdownMenuItem<String> CountryItem(String Countryvalue) => DropdownMenuItem(
  value:Countryvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Countryvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> StateItem(String Statevalue) => DropdownMenuItem(
  value:Statevalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Statevalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> DistrictItem(String Districtvalue) => DropdownMenuItem(
  value:Districtvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Districtvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> MunicipalItem(String Municipalvalue) => DropdownMenuItem(
  value:Municipalvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Municipalvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );