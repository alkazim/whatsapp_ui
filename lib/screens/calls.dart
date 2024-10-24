import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.call,color: Colors.white,),
      ),
      body: ListView.builder(
        itemCount: citem.length,
          itemBuilder: (context, index) {
          return Calls_item(image: NetworkImage(citem[index][0]), Name: citem[index][1], icon: citem[index][2], time: citem[index][3]);

          },),
    );
  }
}



class Calls_item extends StatelessWidget {
  const Calls_item({super.key, required this.image, required this.Name, required this.icon, required this.time, this.color});

  final ImageProvider? image;
  final String? Name;
  final IconData? icon;
  final String? time;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 30,
          child: Image(
            image: image!,
            fit: BoxFit.contain,
          )),
      trailing: Icon(icon,color: color),
      title: Text(
        Name!,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(time!),
    );;
  }
}

List citem=[
  [
    'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
    'Rahul',
    Icons.call,
    '2:45',
    Colors.red
  ],
  [
    'https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=',
    'Rohith',
    Icons.call,
    '2:45',
    Colors.green
  ]
];

