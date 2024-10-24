import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF0b141a),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListRefactor(
              image: NetworkImage(items[index][0]),
              name: items[index][1],
              sub: items[index][2],
              time: items[index][3]);
        },
      ),
    );
  }
}

List items = [
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Rahul',
    'hello',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Rohith',
    'how are you ?',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Ron',
    'Are u there ?',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Joel',
    'Is it okay ??',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Kazim',
    'ok bye',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'John',
    'Sorry',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Ram',
    'no issues',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Jesvin',
    'cool',
    '2:30'
  ],
  [
    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
    'Nithin',
    'see u',
    '2:30'
  ],
];

class ListRefactor extends StatelessWidget {
  const ListRefactor(
      {super.key,
      required this.image,
      required this.name,
      required this.sub,
      required this.time,
      this.NameColor});

  final ImageProvider? image;
  final String? name;
  final String? sub;
  final String? time;
  final Color? NameColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //focusColor:Color(0xFF0b141a),
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: image,
      ),
      trailing: Text(time!),
      title: Text(
        name!,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(sub!),
    );
  }
}
