import 'package:flutter/material.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( backgroundColor: const Color.fromARGB(255, 124, 124, 123),title: const Text("Edit Note"),actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.check))],
      automaticallyImplyLeading: false,),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    label: const Text("title"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    label: const Text("descreption"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),const SizedBox(height: 20,),
        ]),
      )
          
        
    );
  }
}