import 'package:appmy/pages/Note.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NoteButtom extends StatelessWidget {
  const NoteButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
          index: 1,
         
          onTap: (index) {
            if (index == 0) {
              index--;
               Navigator.pop<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const NotePage(),
                ),
              );
            } else if (index == 1) {
             
            }
          },
          animationDuration: const Duration(milliseconds: 20),
          backgroundColor: Colors.white,
          height: 50,
          color: const Color.fromARGB(255, 124, 124, 123),
          items: const [Icon(Icons.home), Icon(Icons.note_add)]);
  }
}