import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_widget.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({ Key? key }) : super(key: key);

  @override
  _LocationDetailsState createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {

  final CountryDetails = ["Any","Medium","Thin","Fat"];
  String? Countryvalue;

  final StateDetails = ["Any1","Medium1","Thin1","Fat1"];
  String? Statevalue;

  final DistrictDetails = ["Any2","Medium2","Thin2","Fat2"];
  String? Districtvalue;

  final MunicipalDetails = ["Any3","Medium3","Thin3","Fat3"];
  String? Municipalvalue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Text('Location Information'),
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
          margin:EdgeInsets.all(20),
          child: 
          Column(
            children: [
               Align(
                       alignment: Alignment.centerLeft,
                       child:
                       Container(
                         padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                         child: (
                           Text('Communication Address',
                           style: TextStyle(
                           fontSize: 16,
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
                        hintText: 'Enter Your Address',
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
                         padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                         child: (
                           Text('Country',
                           style: TextStyle(
                           fontSize: 16,
                           color:Colors.black,
                           
                           fontWeight: FontWeight.bold
                         ))),
                       )
                     ),
                     Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                         padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                         child: (
                           Text('State',
                           style: TextStyle(
                           fontSize: 16,
                           color:Colors.black,
                           
                           fontWeight: FontWeight.bold
                         ))),
                       )
                     ),
                     Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                         padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                         child: (
                           Text('District',
                           style: TextStyle(
                           fontSize: 16,
                           color:Colors.black,
                           
                           fontWeight: FontWeight.bold
                         ))),
                       )
                     ),
                     Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                         padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                         child: (
                           Text('Municipality/Panchayat',
                           style: TextStyle(
                           fontSize: 16,
                           color:Colors.black,
                           
                           fontWeight: FontWeight.bold
                         ))),
                       )
                     ),
                     Container(
                       margin:EdgeInsets.fromLTRB(15, 10, 15, 10),
                       padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                     Container(
                       margin: EdgeInsets.all(20),
                       padding: EdgeInsets.all(25),
                       height: 300,
                       decoration: BoxDecoration(
                         border:Border.all(color:HexColor('6d1140'),width:1),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
    
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Communication Address (Specify if Country Not India)',style:TextStyle(fontWeight: FontWeight.bold)),
                            Container(
              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: Text('Type Here')),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: TextField(
  keyboardType: TextInputType.multiline,
  maxLines: null,
  maxLength: 180,
  decoration: InputDecoration(
    counterText: ''
  ),
),

            ),
             Align(
                       alignment: Alignment.centerLeft,
                       child:
                       Container(
                         padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
                         child: (
                           Text('Out To Residence',
                           style: TextStyle(
                           fontSize: 12,
                           color:Colors.black,
                           
                           fontWeight: FontWeight.bold
                         ))),
                       )
                     ),
                     Container(
                     margin:EdgeInsets.fromLTRB(8, 5, 8, 10),
                     child: TextFormField( 
                       
                      //  controller: nameController,
                    decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),

                      fillColor: HexColor("dbd2e9"),
                      filled: true,
                      border: OutlineInputBorder(),
                      // labelText: 'Username',
                      hintText: 'Type Here..',
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