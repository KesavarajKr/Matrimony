import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        
        title:Text('Notifications'),
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
                        Tab(text: "Interests"),
                        Tab(text: "Alerts"),
                    ])
                    ,
                    
      ),

      body : TabBarView(
        children: [
          
          Text('data'),
      ],)
    )

  );
}