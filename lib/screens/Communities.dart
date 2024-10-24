import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 10),
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.people_outline),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("New Community"),
          )
        ],
      ),
    );
  }
}
