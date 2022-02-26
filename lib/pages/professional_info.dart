import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_widget.dart';

class ProfessionalInfo extends StatefulWidget {
  const ProfessionalInfo({ Key? key }) : super(key: key);

  @override
  ProfessionalInfoState createState() => ProfessionalInfoState();
}

class ProfessionalInfoState extends State<ProfessionalInfo> {

  final EducationDetails = ["Any","Medium","Thin","Fat"];
  String? Educationvalue;

  final jobcategoryDetails = ["Any","Medium","Thin","Fat"];
  String? jobcategoryvalue;

  final CountryDetails = ["Any","Medium","Thin","Fat"];
  String? Countryvalue;

  final StateDetails = ["Any1","Medium1","Thin1","Fat1"];
  String? Statevalue;

  final DistrictDetails = ["Any2","Medium2","Thin2","Fat2"];
  String? Districtvalue;

  final CityDetails = ["Any2","Medium2","Thin2","Fat2"];
  String? Cityvalue;

  final AnnaulincomeDetails = ["1 laks - 5 laks","Medium2","Thin2","Fat2"];
  String? Annaulincomevalue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        title:const Text('Professional Information'),
        toolbarHeight: 100.0,
        backgroundColor: HexColor('6d1140'),
         shape: const RoundedRectangleBorder(
              
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
                             Text('Education',
                             style: TextStyle(
                             fontSize: 16,
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Education In Detail',
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Job Category',
                             style: TextStyle(
                             fontSize: 16,
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Job In Detail',
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Job Location: Country',
                             style: TextStyle(
                             fontSize: 16,
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Job Location: State',
                             style: TextStyle(
                             fontSize: 16,
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Job Location: District',
                             style: TextStyle(
                             fontSize: 16,
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
                           padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                           child: (
                             Text('Job Location: City',
                             style: TextStyle(
                             fontSize: 16,
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
                             value: Cityvalue,
                             iconSize:36,
                             
                             dropdownColor: HexColor('dbd2e9'),
                             icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                             focusColor: Colors.transparent,
                             isExpanded: true,
                             items: CityDetails.map(CityItem).toList(),
                             onChanged: (Cityvalue) => setState(()=>this.Cityvalue = Cityvalue as String?),
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
                            Text('Job Location Address (Specify if Country Not India))',style:TextStyle(fontWeight: FontWeight.bold)),
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
                           Text('Annual Income',
                           style: TextStyle(
                           fontSize: 12,
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
                             value: Annaulincomevalue,
                             iconSize:36,
                             
                             dropdownColor: HexColor('dbd2e9'),
                             icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                             focusColor: Colors.transparent,
                             isExpanded: true,
                             items: AnnaulincomeDetails.map(AnnualItem).toList(),
                             onChanged: (Annaulincomevalue) => setState(()=>this.Annaulincomevalue = Annaulincomevalue as String?),
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

  DropdownMenuItem<String> CityItem(String Cityvalue) => DropdownMenuItem(
  value:Cityvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Cityvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> AnnualItem(String Annaulincomevalue) => DropdownMenuItem(
  value:Annaulincomevalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Annaulincomevalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );