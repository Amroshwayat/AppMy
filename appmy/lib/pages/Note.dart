import 'package:appmy/widgets/Note_Bottom.dart';

import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Note'),
       actions:[ IconButton(onPressed: (){},icon: Icon(Icons.search),)],
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 124, 124, 123),
      ),floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25,right: 10),
        child: IconButton( color: Colors.black,onPressed: (){},icon: Icon(Icons.add)),
      ),
        bottomNavigationBar:NoteButtom() ,
    );
  }
}
