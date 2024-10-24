import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Communities.dart';
import 'package:whatsapp/screens/camera.dart';

import 'screens/calls.dart';
import 'screens/chats.dart';
import 'screens/status.dart';

class MainScreen extends StatefulWidget {
   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 int current_index=0;

 void onItem(int index){
   setState(() {
     current_index=index;
   });
 }

 List items=[Chats(),Status(),Communities(),Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          title: Text(
            "WhatsApp",
            style:
                TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child:
                    Row(
                      children: [
                        Icon(Icons.circle_outlined,color: Colors.blueAccent,),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Ask Meta AI / Search")
                      ],
                    ),
                height: 50,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),

          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {},
              tooltip: 'UPI Scanner',
              icon: Icon(Icons.document_scanner_outlined),
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "camera screen");
              },
              tooltip: 'Camera',
              icon: Icon(Icons.camera_alt_outlined),
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            PopupMenuButton(
              color: Colors.white,
              iconColor: Colors.white,
              itemBuilder: (context) =>
              [
                CheckedPopupMenuItem(
                  child: Text("New Group"),
                  value: 1,
                ),
                CheckedPopupMenuItem(
                  child: Text("New Broadcast"),
                  value: 2,
                ),
                CheckedPopupMenuItem(
                  child: Text("Linked Devices"),
                  value: 3,
                ),
                CheckedPopupMenuItem(
                  child: Text("Starred Messages"),
                  value: 4,
                ),
                CheckedPopupMenuItem(
                  child: Text("Payments"),
                  value: 5,
                ),
                CheckedPopupMenuItem(
                  child: Text("Settings"),
                  value: 6,
                ),


              ],)
          ],
        ),
        body:  items[current_index],


 bottomNavigationBar: BottomNavigationBar(
   //backgroundColor: Colors.green,
      //  fixedColor: Colors.green,
        currentIndex: current_index ,

        onTap: onItem,

        items: [BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Chat',backgroundColor: Colors.green),
                BottomNavigationBarItem(icon: Icon(Icons.update),label: 'Updates'),
                BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined),label: 'Communities'),
                BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls')
                ],
    ),
    );
  }
}
