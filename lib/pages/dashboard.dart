// ignore_for_file: deprecated_member_use

// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:varan_matrimony/pages/custom_widget.dart';
import 'package:varan_matrimony/pages/profile_completeness.dart';
import 'package:varan_matrimony/pages/view_profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      
      if(_selectedIndex == 3)
      {
        _openEndDrawer();
        
      }
      else
      {
        
      }
    });
  }

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

void _closeEndDrawer() {
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
                
          backgroundColor: HexColor('6d1140'),
          toolbarHeight: 100.0,
          
          shape: RoundedRectangleBorder(
              
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(30),
                          bottomRight:Radius.circular(30),
                    )),
          title: Image.asset('assets/LOGO_for_App.png'),
           actions: [
            IconButton(onPressed: (){
              print('Button Clicked');
            }, icon: Icon(Icons.search)),
            IconButton(onPressed: (){
              print('Button Clicked');
            }, icon: Icon(Icons.notifications)),
            IconButton(onPressed: (){
              print('Button Clicked');
            }, icon: Icon(Icons.account_circle))
          ],
          
        ),
        endDrawer: SafeArea(
          child: Drawer(
            elevation: 16.0,
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height:250,
                      decoration: BoxDecoration(
                         gradient: LinearGradient(colors: [
                           HexColor('6d1140'),
                           HexColor('6d1140')
                         ],
                         end: const Alignment(0.0, -1),
                      begin: const Alignment(0.0, 0.6),),
                      ),
                      child:Container(
                        margin:EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children : [
                                IconButton(
                                  onPressed: _closeEndDrawer,
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
                            Container(
                              
                              height: 100,
                              width:100,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                                color: Colors.white,
                              ),
                            ),
                            Text('User Name',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize:20.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children : [
                                Text('Age : 25',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize:10.0)),
                                Text('ID : VAR1902202201',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize:10.0)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:15.0),
                    InkWell(
                      child: ListTile(
                      title:Text('My Account',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.mail,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){
                                    
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ViewProfile())
                                    );

                                    },
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Notification',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.notifications,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Matches',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.people,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Favourite People',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.favorite,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Upgrade Premium',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.stars_rounded,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                   InkWell(
                      child: ListTile(
                      title:Text('Contact Us',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.headset_mic_outlined,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Privacy',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.lock,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Settings',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.settings,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Share',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.share,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                  InkWell(
                      child: ListTile(
                      title:Text('Logout',style:TextStyle(fontWeight:FontWeight.bold)),
                      leading: Icon(Icons.logout,color:HexColor('6d1140')),
                                  ),
                                  onTap:(){print("Working");},
                    ),
                  Divider(
                    height:0.1
                  ),
                    
                ],
                
              ),
            )
              ),
        ),
      // Disable opening the end drawer with a swipe gesture.
     
        drawer: Drawer(
          
          elevation: 16.0,
          child:Column(
            children: <Widget>[
              
               Container(
                 
                 
                 height:120,
                 color:HexColor('6d1140'),
                  child:
                  Image(
                //  image:AssetImage('assets/LOGO_for App.PNG')
                   image: AssetImage('assets/LOGO_for_App.png'),
                   ),
               ),
            ],
            )
        ),
        body: SingleChildScrollView(
          
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                     gradient: LinearGradient(colors: [
                       HexColor('DBD2E9'),
                       HexColor('DFA7B2')
                     ]),
                  ),
                  child:Container(
                    width: double.infinity,
                    
                    child:Container(
                      margin: EdgeInsets.all(25.0),
                      child: Column(
                        
                        children: [
                          
                          Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text("125 New Mathches",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                              ),
                              Container(
                                child:
         
        IconButton(
                icon: const Icon(Icons.arrow_right),
                color: Colors.black,
                onPressed: () {
                  showDialog<String>(
                    
        context: context,
        builder: (BuildContext context) => AlertDialog(
          
          title: const Text('Complete Your Profile',textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:17.0,

                    ),),
          content: const Text('Your profile is not completed 75% Need to Complete',textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:14.0,

                    )),
          actions: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfileCompleteness())
                  );
                    
                },
                
                child:Container(
                  padding:EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  color:HexColor('6D1140'),
                  child:
                  Text('Edit',style:TextStyle(color:HexColor('ffffff'))),
                )
              ),
              SizedBox(height:10.0),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    
                    child: 
                    Text('Cancel',style:TextStyle(color:HexColor('000000'),fontWeight:FontWeight.bold)),
                    
                  ),
                  
                ],
              ),
            ),
            
          ],
        ),
                  );
                },
                
          ),
        
                              )
                            ],
                          ),
                        SizedBox(
                          height:250,
                          child: ListView.builder(
                            itemCount: 10, 
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index)=>Container(
                                height: 180,
                                width: 160,
                                
                                margin:EdgeInsets.all(15),
                                child: Center(
                                  child:  Card(
                                    elevation: 10.0,
                                margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                                shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.transparent, ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                                child: Stack(
                                  
                                  overflow: Overflow.visible,
                                  children: [
                                    Container(
                                      height: 230,
                                      width: 160,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                            child:
                                            Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                            child:
                                            Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                           Container(
                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                            child:
                                            Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                           Container(
                                             child:Row(
                                               children: [
                                                 Column(
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                   children: [
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                            height: 3.0,
                                          ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                            height: 3.0,
                                          ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     )
                                                   ],
                                                 ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                 ),
                                                 SizedBox(
                                            height: 3.0,
                                          ),
                                                 Container(
                                                   margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                 ),
                                                 SizedBox(
                                            height: 3.0,
                                          ),
                                                 Container(
                                                   margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                 ),
                                                    ],
                                                  ),
                                                
                                               ],
                                             )
                                           ),
                                           SizedBox(
                                             height: 3.0,
                                           ),
                                           Container(
                                             margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                             child: Row(
                                               children: [
                                                 Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                 IconButton(
                                                   onPressed: () {}, 
                                                   icon: Icon(Icons.favorite),
                                                   color: Colors.red,
                                                   ),
                                               ],
                                             ),
                                           )
                                          
                                          
                                          
                                           
                                        ],
                                      ),
                                      
                                    ),
                                    Positioned(
                                      right: -10,
                                      top:-25,
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        child:ClipRRect(
                                          
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                      //   decoration: BoxDecoration(
                                      //    color:Colors.blue,
                                      //   borderRadius: BorderRadius.circular(50),
                                      // ),
                                      ),
                                    )
                                  ],
                                ),
                                
                              ),
                                  
                                ),
                                
                            ), 
                            
                          ),
                        ),
                          
                          
                        ],
                          
                      ),
                      
                    ),
                    
                  ),
                    
                ),
                
                Container(
                  height: 350,
                  color:HexColor('6D1140'),
                  padding: EdgeInsets.all(10),
                  child:
                  Column(
                    children: [
                      SizedBox(
                              height:280,
                              child: ListView.builder(
                                itemCount: 10, 
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, index)=>Container(
                                    height: 180,
                                    width: 160,
                                    
                                    margin:EdgeInsets.all(15),
                                    child: Center(
                                      child:  Card(
                                    margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(18),
                              ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                              borderRadius: BorderRadius.circular(50),
                              
                              child: Image(
                              image: AssetImage('assets/profile1.jpg'),
                              ),
                              
                              ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                      
                                    ),
                                    
                                ), 
                                
                              ),
                            ),
                            Buttons(btnText: 'Explore Prime', onBtnPressed: (){}, LeftPadding: 25.0, bottomPadding: 10.0, rightPadding: 25.0, topPadding: 10.0, colorOne: 'c6a972', colorTwo: 'a8803b', btnTextColor: '000000', fontsize: 13.0)
                    ],
                  ),
                        
                ),
                Container(
                  
                  padding: EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                     gradient: LinearGradient(colors: [
                       HexColor('DBD2E9'),
                       HexColor('DFA7B2')
                     ]),
                     
                  ),
                   child:Container(
                    width: double.infinity,
                    
                    child:Container(

                      child: Column(
                        
                        children: [
                          
                          Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text("Daily Suggestions",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                              ),
                              
                            ],
                          ),
                        SizedBox(
                          height:300,
                          child: ListView.builder(
                            itemCount: 10, 
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index)=>Container(
                                height: 180,
                                width: 160,
                                
                                margin:EdgeInsets.all(15),
                                child: Center(
                                  child:  Card(
                                    elevation: 10.0,
                                margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                                shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.transparent, ),
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          
                                child: Stack(
                                  
                                  overflow: Overflow.visible,
                                  children: [
                                    Container(
                                      height: 180,
                                      width: 160,
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                            child:
                                            Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                            child:
                                            Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                           Container(
                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                            child:
                                            Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                           Container(
                                             child:Row(
                                               children: [
                                                 Column(
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                   children: [
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                            height: 3.0,
                                          ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                            height: 3.0,
                                          ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     )
                                                   ],
                                                 ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                 ),
                                                 SizedBox(
                                            height: 3.0,
                                          ),
                                                 Container(
                                                   margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                 ),
                                                 SizedBox(
                                            height: 3.0,
                                          ),
                                                 Container(
                                                   margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                       child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                 ),
                                                    ],
                                                  ),
                                                
                                               ],
                                             )
                                           ),
                                           SizedBox(
                                             height: 3.0,
                                           ),
                                           Container(
                                             margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                             child: Row(
                                               children: [
                                                 Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                 IconButton(
                                                   onPressed: () {}, 
                                                   icon: Icon(Icons.favorite),
                                                   color: Colors.red,
                                                   ),
                                               ],
                                             ),
                                           )
                                          
                                          
                                          
                                           
                                        ],
                                      ),
                                      
                                    ),
                                    Positioned(
                                      right: -10,
                                      top:-25,
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        child:ClipRRect(
                                          
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                      //   decoration: BoxDecoration(
                                      //    color:Colors.blue,
                                      //   borderRadius: BorderRadius.circular(50),
                                      // ),
                                      ),
                                    )
                                  ],
                                ),
                                
                              ),
                                  
                                ),
                                
                            ), 
                            
                          ),
                        ),
                        Container(
                          
                          height: 160,
                          decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            HexColor('DBD2E9'),
                            HexColor('DFA7B2')
                          ]),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Discover Matches",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                        ],
                        
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                        child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    
                                    height: 70,
                                    width:70,
                                    child:
                                    Center(
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                              
                                        children: [
                                          Icon(Icons.location_on_outlined,size: 30.0,color:Colors.white),
                                          Text("Location",style:TextStyle(color:Colors.white,fontSize: 10.0)),
                                        ],
                                        
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                                          gradient: LinearGradient(colors: [
                              HexColor('009451'),
                              HexColor('80b43f')
                                                          ]),
                                                          
                                                  ),
                                                  
                                  ),
                                  SizedBox(height:10.0),
                                  Text("120 Matches",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
                                ],
                                
                              ),
                              onTap: () {
                                print("Kesavan");
                              },
                            ),
                           InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    
                                    height: 70,
                                    width:70,
                                    child:
                                    Center(
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                              
                                        children: [
                                          Icon(Icons.local_activity,size: 30.0,color:Colors.white),
                                          Text("Professional",style:TextStyle(color:Colors.white,fontSize: 10.0)),
                                        ],
                                        
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                                          gradient: LinearGradient(colors: [
                                 HexColor('009cdd'),
                              HexColor('d172dd')
                                                          ]),
                                                          
                                                  ),
                                                  
                                  ),
                                  SizedBox(height:10.0),
                                  Text("120 Matches",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
                                ],
                                
                              ),
                              onTap: () {
                                print("Kesavan");
                              },
                            ),
                             InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    
                                    height: 70,
                                    width:70,
                                    child:
                                    Center(
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                              
                                        children: [
                                          Icon(Icons.star_purple500_rounded,size: 30.0,color:Colors.white),
                                          Text("Stars",style:TextStyle(color:Colors.white,fontSize: 10.0)),
                                        ],
                                        
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                                          gradient: LinearGradient(colors: [
                                  HexColor('2b3980'),
                              HexColor('2ba473')
                                                          ]),
                                                          
                                                  ),
                                                  
                                  ),
                                  SizedBox(height:10.0),
                                  Text("120 Matches",style:TextStyle(fontWeight: FontWeight.bold,fontSize:12.0)),
                                ],
                                
                              ),
                              onTap: () {
                                print("Kesavan");
                              },
                            ),
                             InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    
                                    height: 70,
                                    width:70,
                                    child:
                                    Center(
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                              
                                        children: [
                                          Icon(Icons.cast_for_education_outlined,size: 30.0,color:Colors.white),
                                          Text("Education",style:TextStyle(color:Colors.white,fontSize: 10.0)),
                                        ],
                                        
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                                          gradient: LinearGradient(colors: [
                                  HexColor('e5821d'),
                              HexColor('dc2a7b')
                                                          ]),
                                                          
                                                  ),
                                                  
                                  ),
                                  SizedBox(height:10.0),
                                  Text("120 Matches",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
                                ],
                                
                              ),
                              onTap: () {
                                print("Kesavan");
                              },
                            ),
                            
                          ],
                        ),
                        
                      )
                    ],
                  ),
                        ),
                        Container(
                          
                          height: 580,
                          decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            HexColor('DBD2E9'),
                            HexColor('DFA7B2')
                          ]),
                  ),
                          child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Premium Matches",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                                  
                                   Container(
                                    child:
         
        IconButton(
                icon: const Icon(Icons.arrow_right),
                color: Colors.black,
                onPressed: () {},
                
          ),
        
                                  )
                                ],
                              ),
                              SizedBox(height:10.0),
                              Container(
                                height: 510,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: HexColor('6D1140')),
                          ),
                          child:
                            Column(
                              
                              children: [
                                SizedBox(height:40.0),
                                Row(
                                  
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [

                                     Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),

                                  Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                ),
                                SizedBox(height:40.0),
                                 Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [

                                     Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),

                                  Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                ),
                              ],
                            ),
                  ),
                              
                            ],
                          ),

                          
                          
                        ),
                         Container(
                          
                          height: 580,
                          decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            HexColor('DBD2E9'),
                            HexColor('DFA7B2')
                          ]),
                  ),
                          child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mutual Profiles",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                                  
                                   Container(
                                    child:
         
        IconButton(
                icon: const Icon(Icons.arrow_right),
                color: Colors.black,
                onPressed: () {},
                
          ),
        
                                  )
                                ],
                              ),
                              SizedBox(height:10.0),
                              Container(
                                height: 510,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: HexColor('6D1140')),
                          ),
                          child:
                            Column(
                              
                              children: [
                                SizedBox(height:40.0),
                                Row(
                                  
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [

                                     Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),

                                  Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                ),
                                SizedBox(height:40.0),
                                 Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [

                                     Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),

                                  Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                ),
                              ],
                            ),
                  ),

                              
                            ],
                          ),

                          
                          
                        ),
                           
                        ],
                        
                        
                      ),
                      
                    ),
                    
                  ),
                ),
                Container(
                  height:250,
                  width:double.infinity,
                  decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("assets/bgimg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Text("Need help to fine life partner?",style:TextStyle(fontSize:25.0,color:Colors.white)),
              SizedBox(height:15.0),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Get personalised service from a Relationship Manager",style:TextStyle(fontSize:18.0,color:Colors.white)),
              ),
              SizedBox(height:15.0),
              Buttons(btnText: "Know More", onBtnPressed: (){}, LeftPadding: 30.0, bottomPadding: 10.0, rightPadding: 30.0, topPadding: 10.0, colorOne: 'C6a972', colorTwo: 'a88038', btnTextColor: 'ffffff', fontsize: 15.0)
            ],
          ),
        )
                ),
                 Container(
                          padding: EdgeInsets.all(25.0),
                          height: 650,
                          decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            HexColor('DBD2E9'),
                            HexColor('DFA7B2')
                          ]),
                  ),
                          child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mutual Profiles",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                                  
                                   Container(
                                    child:
         
        IconButton(
                icon: const Icon(Icons.arrow_right),
                color: Colors.black,
                onPressed: () {},
                
          ),
        
                                  )
                                ],
                              ),
                              SizedBox(height:10.0),
                              Container(
                                height: 500,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: HexColor('6D1140')),
                          ),
                          child:
                            Column(
                              
                              children: [
                                SizedBox(height:40.0),
                                Row(
                                  
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [

                                     Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),

                                  Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                ),
                                SizedBox(height:40.0),
                                 Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [

                                     Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),

                                  Card(
                                        elevation: 10.0,
                                    
                                    shape: RoundedRectangleBorder(
                                            side: BorderSide(color: Colors.transparent, ),
                                borderRadius: BorderRadius.circular(10),
                          ),
                                    child: Stack(
                                      
                                      overflow: Overflow.visible,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 160,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("23 Years",style:TextStyle(fontSize:15.0,color:HexColor('6D1140'))),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Bride Name",style:TextStyle(fontWeight: FontWeight.bold,fontSize:17.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                child:
                                                Text("Occupation",style:TextStyle(fontSize:15.0,color:Colors.black)),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                               Container(
                                                 child:Row(
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Education",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Location",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         ),
                                                         SizedBox(
                                                height: 3.0,
                                              ),
                                                         Container(
                                                           margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Subcaste",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                         )
                                                       ],
                                                     ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("BE",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("Coimbatore",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                     SizedBox(
                                                height: 3.0,
                                              ),
                                                     Container(
                                                       margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                           child:Text("XXXXX",style:TextStyle(fontSize:12.0,color:Colors.black)),
                                                     ),
                                                        ],
                                                      ),
                                                    
                                                   ],
                                                 )
                                               ),
                                               SizedBox(
                                                 height: 3.0,
                                               ),
                                               Container(
                                                 margin:EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                                                 child: Row(
                                                   children: [
                                                     Buttons(btnText: 'View Profile', onBtnPressed: (){}, LeftPadding: 13.0, bottomPadding: 8.0, rightPadding: 13.0, topPadding: 8.0, colorOne: '6D1140', colorTwo: '6D1140', btnTextColor: 'FFFFFF',fontsize: 12.0),
                                                     IconButton(
                                                       onPressed: () {}, 
                                                       icon: Icon(Icons.favorite),
                                                       color: Colors.red,
                                                       ),
                                                   ],
                                                 ),
                                               )
                                              
                                              
                                              
                                               
                                            ],
                                          ),
                                          
                                        ),
                                        Positioned(
                                          right: -10,
                                          top:-25,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            child:ClipRRect(
                                              
                          borderRadius: BorderRadius.circular(50),
                          
                          child: Image(
                          image: AssetImage('assets/profile1.jpg'),
                          ),
                          
                          ),
                                          //   decoration: BoxDecoration(
                                          //    color:Colors.blue,
                                          //   borderRadius: BorderRadius.circular(50),
                                          // ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                ),
                              ],
                            ),
                  ),

                             
                            ],
                             
                          ),

                         
                          
                        ),
                
              ],
              
            ),
            
            
          ),
          
        ),
        bottomNavigationBar:BottomNavigationBar(
            items:[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label:'Home',
                backgroundColor:HexColor('6d1140')
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label:'Profile',
                backgroundColor:HexColor('6d1140')
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label:'Notifications',
                backgroundColor:HexColor('6d1140')
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label:'Menu',
                backgroundColor:HexColor('6d1140'),
               
      ),
                
            ], 
            currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped
            ),
      );

      

  }
}

