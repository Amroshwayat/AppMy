import 'package:appmy/widgets/Note_Bottom.dart';
import 'package:appmy/widgets/note_view.dart';

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
        title: const Text('Notes'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 124, 124, 123),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25, right: 10),
        child: IconButton(
            color: Colors.black,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const ShowButtom();
                  });
            },
            icon: const Icon(Icons.add)),
      ),
      bottomNavigationBar: const NoteButtom(),
      body: const BodyNote(),
    );
  }
}

class ShowButtom extends StatefulWidget {
  const ShowButtom({super.key});

  @override
  State<ShowButtom> createState() => _ShowButtomState();
}

class _ShowButtomState extends State<ShowButtom> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode auto=AutovalidateMode.disabled;
  String ? title ,subTitle;
  // void Function(String?)? onSaved;
  // void Function(String?)? onSaved1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: auto,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved:(value){
title=value;
                },
                validator: (value) {
                  if(value?.isEmpty??true){
                    return 'Failed is required';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    label: const Text("title"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                 onSaved:(Value){
subTitle=Value;
                 },
                validator: (value) {
                  if(value?.isEmpty??true){
                    return 'Failed is required';
                  }else{
                    return null;
                  }},
                maxLines: 5,
                decoration: InputDecoration(
                    label: const Text("descreption"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),const SizedBox(height: 20,),
              InkWell(onTap: (){
if(formKey.currentState!.validate()){
  formKey.currentState!.save();
}else{
  setState(() {
      auto=AutovalidateMode.always;

  });
}




              },child: Container(height: 50,width: 90,decoration: BoxDecoration(color: const Color.fromARGB(255, 124, 124, 123),borderRadius: BorderRadius.circular(20)),child: const Center(child: Text("add")),))
            ],
          ),
        ),
      ),
    );
  }
}
