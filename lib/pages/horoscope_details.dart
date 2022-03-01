import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HoroscopeDetails extends StatefulWidget {
  const HoroscopeDetails({ Key? key }) : super(key: key);

  @override
  _HoroscopeDetailsState createState() => _HoroscopeDetailsState();
}

class _HoroscopeDetailsState extends State<HoroscopeDetails> {

  DateTime? _dateTime;

  final zodiacDetails = ["Any","Medium","Thin","Fat"];
  String? Zodiacvalue;

  final LaknamDetails = ["Any","Medium","Thin","Fat"];
  String? laknamvalue;

  final StarsDetails = ["Any","Medium","Thin","Fat"];
  String? starvalue;

  late TimeOfDay time;
  late TimeOfDay picked;

  void initState(){
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> SelectTime (BuildContext context) async {
      picked = (await showTimePicker(
        context: context,
        initialTime: time
        ))!;

       
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:Text('Horoscope Details'),
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
                               Text('Zodiac',
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
                               value: Zodiacvalue,
                               iconSize:36,
                               
                               dropdownColor: HexColor('dbd2e9'),
                               icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                               focusColor: Colors.transparent,
                               isExpanded: true,
                               items: zodiacDetails.map(ZodiacItem).toList(),
                               onChanged: (Zodiacvalue) => setState(()=>this.Zodiacvalue = Zodiacvalue as String?),
                               ),
                           ),
                         ),
                          Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Laknam',
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
                               value: laknamvalue,
                               iconSize:36,
                               
                               dropdownColor: HexColor('dbd2e9'),
                               icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                               focusColor: Colors.transparent,
                               isExpanded: true,
                               items: LaknamDetails.map(ZodiacItem).toList(),
                               onChanged: (laknamvalue) => setState(()=>this.laknamvalue = laknamvalue as String?),
                               ),
                           ),
                         ),
                         Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Stars',
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
                               value: starvalue,
                               iconSize:36,
                               
                               dropdownColor: HexColor('dbd2e9'),
                               icon:Icon(Icons.arrow_drop_down,color:HexColor('6d1140')),
                               focusColor: Colors.transparent,
                               isExpanded: true,
                               items: StarsDetails.map(StarsItem).toList(),
                               onChanged: (starvalue) => setState(()=>this.starvalue = starvalue as String?),
                               ),
                           ),
                         ),
                         Align(
                           alignment: Alignment.centerLeft,
                           child:
                           Container(
                             padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                             child: (
                               Text('Birth Date',
                               style: TextStyle(
                               fontSize: 16,
                               color:Colors.black,
                               
                               fontWeight: FontWeight.bold
                             ))),
                           )
                         ),
                          Container(
                       margin:EdgeInsets.fromLTRB(25, 10, 0, 0),
                       child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        
                     child: ElevatedButton.icon(
                       
                       label: Text(_dateTime == null ? 'Choose Date' : _dateTime.toString()),
                       icon: Icon(Icons.date_range), 
                       
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                                  initialDatePickerMode: DatePickerMode.day,
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
                      Align(
                       alignment: Alignment.centerLeft,
                       child:
                       Container(
                     padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                     child: (
                       
                       const Text('Birth Time',
                       style: TextStyle(
                       fontSize: 16,
                       color:Colors.black,
                       
                       fontWeight: FontWeight.bold
                     ))),
                       )
                     ),
                     IconButton(
                       onPressed: (){
                         SelectTime(context);
                       },
                        icon: Icon(Icons.alarm))
            ],
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> ZodiacItem(String Zodiacvalue) => DropdownMenuItem(
  value:Zodiacvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        Zodiacvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> LaknamItem(String laknamvalue) => DropdownMenuItem(
  value:laknamvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        laknamvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );

  DropdownMenuItem<String> StarsItem(String starvalue) => DropdownMenuItem(
  value:starvalue,
  child: 
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        starvalue,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize : 12)
        ),
    ),
  );