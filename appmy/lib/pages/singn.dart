

import 'package:appmy/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigenIn extends StatefulWidget {
  const SigenIn({super.key});

  @override
  State<SigenIn> createState() => _SigenInState();
}

class _SigenInState extends State<SigenIn> {
  TextEditingController Name=TextEditingController();
  TextEditingController Passward=TextEditingController();
Future<bool> check({required String name,required String passward}) async{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
prefs.getString('name');
prefs.getString('passward');
if(prefs.getString('name')==name&&prefs.getString('passward')==passward){
  return true;
}else{
  return false;
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sigan In'),
       
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 124, 124, 123),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          const SizedBox(height: 20,),
          TextField(controller:Name,decoration: InputDecoration(label: const Text("Name"),border: OutlineInputBorder(borderRadius:BorderRadius.circular(20))),),
          const SizedBox(height: 20,),
          TextField(controller:Passward,decoration: InputDecoration(label: const Text("Passward"),border: OutlineInputBorder(borderRadius:BorderRadius.circular(20))),),
          const SizedBox(height: 20,),
          InkWell(onTap: (){
            check(name: Name.text.toString(), passward: Passward.text.toString()).then((value) {
              if(value==true){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
    return const HomePage();
  }), (route) => false);
              }
            });
                   
          },child: const Center(child: Text("log in")))
        ]),
      ),
    );
  }
}