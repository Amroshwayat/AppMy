import 'package:appmy/pages/edit_note.dart';
import 'package:flutter/material.dart';

class BodyNote extends StatelessWidget {
  const BodyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const EditNote(),
    ),
  );
            },
            child: Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow),
                child: ListTile(
                  title: const Text(
                    'title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                      "Descreptiondddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssss"),
                  trailing: IconButton(
                      iconSize: 30,
                      padding: const EdgeInsets.only(bottom: 40),
                      onPressed: () {},
                      icon: const Icon(Icons.delete)),
                )),
          );
        }));
  }
}
