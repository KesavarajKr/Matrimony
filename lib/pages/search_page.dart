import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:varan_matrimony/pages/custom_widget.dart';


class SearchResult extends StatefulWidget {
  const SearchResult({ Key? key }) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

  DateTime? _dateTime;
  DateTime? _dateTime2;

  final maritalStatus = ["Never Married","Widowed","Widower","Waiting for Legal Divorce","Divorced","Seperated","Nikah Dropped"];
  String? maritalStatusvalue;

  final ReligionDetails = ["Any","Medium","Thin","Fat"];
  String? religionvalue;

  final Heightitem = ["4ft 0in - 121cms","4ft 1in - 124cms","4ft 2in - 127cms","4ft 3in - 130cms","4ft 4in - 133cms","4ft 5in - 136cms","4ft 6in - 139cms","4ft 7in - 142cms","4ft 8in - 145cms","4ft 9in - 148cms","5ft 0in - 151cms","5ft 1in - 154cms","5ft 2in - 157cms","5ft 3in - 160cms","5ft 4in - 163cms","5ft 5in - 167cms","5ft 6in - 170cms","5ft 7in - 173cms","5ft 8in - 176cms","5ft 9in - 179cms","6ft 0in - 182cms","6ft 1in - 185cms"];
  String? heightValue;

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


  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        
        title:Text('Search Your Partner'),
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: HexColor('6d1140'),
         shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(0),
                          bottomRight:Radius.circular(0),
                    )),
                    bottom: TabBar(
                      indicatorColor: HexColor('98803b'),
                      tabs: [
                        Tab(text: "Basic"),
                        Tab(text: "ID Search"),
                        Tab(text: "Advanced")
                    ])
                    ,
                    
      ),
      body: TabBarView(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Container(
                margin:EdgeInsets.all(30),
                child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('I am looking for a',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                    SizedBox(height:10),
                    Center(
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            
                            onPressed: (){},
                            icon: Icon(Icons.male), label: Text('Groom'),
                            style: ButtonStyle(
                                     padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(25, 10, 25, 10)),
                              backgroundColor: MaterialStateProperty.all<Color>(HexColor('98803b')),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                   
                  )
                )
                )
                            
                            
                            ),
                            SizedBox(width:20),
                            ElevatedButton.icon(
                            
                            onPressed: (){},
                            icon: Icon(Icons.female), label: Text('Bride'),
                            style: ButtonStyle(
                                     padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(25, 10, 25, 10)),
                              backgroundColor: MaterialStateProperty.all<Color>(HexColor('6d1140')),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                   
                  )
                )
                )
                            
                            
                            ),
                        ],
                      ),
                    ),
                     SizedBox(width:20,height: 20),
                      
                      Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width:150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Marital Status',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                  SizedBox(height: 10),
                                  Container(
                                     
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
                              ),
                            ),
                            SizedBox(width: 20),
                            SizedBox(
                              width:150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Religion',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                  SizedBox(height: 10),
                                  Container(
                           
                           padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Row(
                          children: [
                            SizedBox(
                                  width:150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Partner’s Height',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Container(
                     
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
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                SizedBox(
                              width:150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  SizedBox(height: 13),
                                  Container(
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
                              ),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(height: 20),
                      Row(
                        children: [
                          Center(
                            child: SizedBox(
                                  width:150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Age Between',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                      SizedBox(height: 10),
                                       Container(
                             
                             child: TextFormField( 
                               
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
                          ),
                              SizedBox(width: 20),
                              SizedBox(
                            width:150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                SizedBox(height: 13),
                                 Container(
                           
                           child: TextFormField( 
                             
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
                      SizedBox(height:20),
                      Center(
                        child: Buttons(btnText: 'Search', onBtnPressed: (){}, LeftPadding: 40, bottomPadding: 10, rightPadding: 40, topPadding: 10, colorOne: '6d1140', colorTwo: '6d1140', btnTextColor: 'ffffff', fontsize: 15.0)),
                      SizedBox(height:20),
                      Center(child: Text('To know more, Call Us @ +91 98765 43210',textAlign: TextAlign.center,style:TextStyle(color:Colors.grey,fontSize:13.0,fontWeight:FontWeight.bold,)))
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Your Id Here',textAlign: TextAlign.left,style:TextStyle(fontWeight:FontWeight.bold)),
                SizedBox(height:20),
                Container(
                             
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
                         SizedBox(height:20),
                         Center(child: Buttons(btnText: 'Search', onBtnPressed: (){}, LeftPadding: 40.0, bottomPadding: 10.0, rightPadding: 40.0, topPadding: 10.0, colorOne: '6d1140', colorTwo: '6d1140', btnTextColor: 'ffffff', fontsize: 15.0)),
                         SizedBox(height:20),
                         Center(child: Text('To know more, Call Us @ +91 98765 43210',textAlign: TextAlign.center,style:TextStyle(color:Colors.grey,fontSize:13.0,fontWeight:FontWeight.bold,)))

              ],
            ),
          ),
          Center(
            child:SingleChildScrollView(
              child: Container(
                  margin:EdgeInsets.all(30),
                  child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('I am looking for a',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                      SizedBox(height:10),
                      Center(
                        child: Row(
                          children: [
                            ElevatedButton.icon(
                              
                              onPressed: (){},
                              icon: Icon(Icons.male), label: Text('Groom'),
                              style: ButtonStyle(
                                       padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(25, 15, 25, 15)),
                                backgroundColor: MaterialStateProperty.all<Color>(HexColor('98803b')),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                     
                    )
                  )
                  )
                              
                              
                              ),
                              SizedBox(width:20),
                              ElevatedButton.icon(
                              
                              onPressed: (){},
                              icon: Icon(Icons.female), label: Text('Bride'),
                              style: ButtonStyle(
                                       padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(25, 15, 25, 15)),
                                backgroundColor: MaterialStateProperty.all<Color>(HexColor('6d1140')),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                     
                    )
                  )
                  )
                              
                              
                              ),
                          ],
                        ),
                      ),
                       SizedBox(width:20,height: 20),
                        
                        Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width:150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Marital Status',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                    SizedBox(height: 10),
                                    Container(
                                       
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
                                ),
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width:150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Religion',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                    SizedBox(height: 10),
                                    Container(
                             
                             padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Row(
                            children: [
                              SizedBox(
                                    width:150,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Partner’s Height',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                        SizedBox(height: 10),
                                        Container(
                       
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
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  SizedBox(
                                width:150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    
                                    SizedBox(height: 13),
                                    Container(
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
                                ),
                              ),
                            ],
                          ),
                        ),
                         SizedBox(height: 20),
                        Row(
                          children: [
                            Center(
                              child: SizedBox(
                                    width:150,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Age Between',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                        SizedBox(height: 10),
                                         Container(
                               
                               child: TextFormField( 
                                 
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
                            ),
                                SizedBox(width: 20),
                                SizedBox(
                              width:150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  SizedBox(height: 13),
                                   Container(
                             
                             child: TextFormField( 
                               
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
                        SizedBox(height: 10),
                        Text('Education',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Container(
                         
                         padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                       SizedBox(height: 10),
                       Text('Occupation',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                        SizedBox(height:10),
                         Container(
                         
                         padding: EdgeInsets.symmetric(horizontal: 4,vertical :2),
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
                       SizedBox(height: 10),
                        
                        SizedBox(height:10),
                          Container(
                            child: 
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Country',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)),
                                  SizedBox(height:10),
                                  Container(
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
                     SizedBox(height:10),
                     Text('State',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)),
                     SizedBox(height:10),
                      Container(
                       
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
                     SizedBox(height:10),
                     Text('District',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)),
                     SizedBox(height:10),
                     Container(
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
                     SizedBox(height:10),
                     Text('Recently Added Profile',style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)),
                     SizedBox(height:10),
                      Container(
                     
                     child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      
                   child: ElevatedButton.icon(
                     
                     label: Text(_dateTime == null ? 'From Date' : _dateTime.toString()),
                     icon: Icon(Icons.date_range), 
                     
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2222)
                          ).then((date) {
                             setState(() {
                               _dateTime = date!;
                             });
                          });
                        },
      
                      ),
                     ),
                   ),
                   SizedBox(height:10),
                      Container(
                     
                     child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      
                   child: ElevatedButton.icon(
                     
                     label: Text(_dateTime2 == null ? 'To Date' : _dateTime2.toString()),
                     icon: Icon(Icons.date_range), 
                     
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2222)
                          ).then((date) {
                             setState(() {
                               _dateTime2 = date!;
                             });
                          });
                        },
      
                      ),
                     ),
                   ),
                   SizedBox(height:10),
                   Center(child: Buttons(btnText: 'Search', onBtnPressed: (){}, LeftPadding: 40, bottomPadding: 10, rightPadding: 40, topPadding: 10, colorOne: '6d1140', colorTwo: '6d1140', btnTextColor: 'ffffff', fontsize: 15.0)),
                                ],
                              )
                          ),
                          SizedBox(height:10),
                        Center(child: Text('To know more, Call Us @ +91 98765 43210',textAlign: TextAlign.center,style:TextStyle(color:Colors.grey,fontSize:13.0,fontWeight:FontWeight.bold,)))
                    ],
                  ),
                ),
            ),
            ),
        ]
      ),
    ),

    );
}


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