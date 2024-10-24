import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Camera",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.camera_alt),
      ) ,
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.camera_alt),
        )
      ),
    );
  }
}
