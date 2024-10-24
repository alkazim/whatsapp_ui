import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chats.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: Icon(Icons.upload),
      ),
      body: ListView.builder(
        itemCount: StsList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListRefactor(image: NetworkImage(StsList[index][0]), name: StsList[index][1], time: StsList[index][2], sub: '',)
        ;},
      ),

    );
  }
}

List StsList=[
  [
    'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
    'Rahul',
    '2:30'

  ],
  [
    'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
    'Rohith',
    '2:30'
  ]

];


