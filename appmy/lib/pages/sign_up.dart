import 'package:appmy/Shared/shared.dart';
import 'package:appmy/pages/singn.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigenUp extends StatefulWidget {
  const SigenUp({super.key});

  @override
  State<SigenUp> createState() => _SigenUpState();
}

class _SigenUpState extends State<SigenUp> {

Future<List<Map>> readData()async{
  List<Map> res=await logSql.redData("SELECT * FROM Users ");
  print(res.length);
  return res;

}
@override
  void initState() {
    readData();
    // TODO: implement initState
    super.initState();
  }


  TextEditingController Name=TextEditingController();
  TextEditingController Passward=TextEditingController();
//   check({required String name,required String passward}) async{
//       final SharedPreferences prefs = await SharedPreferences.getInstance();
// prefs.setString('name', name);
// prefs.setString('passward', passward);
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sing Up'),
        
        
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
            if(Name.text!=null&&Passward!=null){
         print( logSql.insertData("INSERT FROM 'Users' User=${Name.text},Password=${1111}"))   ;
             Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            
        builder: (BuildContext context) => const SigenIn(),
          ),
        );
            }
           // check(name: Name.text.toString(),passward: Passward.text.toString());
           
      
          },child: const Center(child: Text("Sing Up")))
        ]),
      ),
    );
  }
}