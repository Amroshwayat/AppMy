import 'package:appmy/Shared/shared.dart';

import 'package:appmy/widgets/Home_buttom.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  sharedData()async{
// Obtain shared preferences.
final SharedPreferences prefs = await SharedPreferences.getInstance();

// Save an integer value to 'counter' key.
await prefs.setInt('counter', 10);
// Save an boolean value to 'repeat' key.
await prefs.setBool('repeat', true);
// Save an double value to 'decimal' key.
await prefs.setDouble('decimal', 1.5);
// Save an String value to 'action' key.
await prefs.setString('action', 'Start');
// Save an list of strings to 'items' key.
await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.black38, Colors.white])),
              accountName: const Text("Amro Shawayat"),
              accountEmail: const Text("amroshwayatf16@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset("assets/Images/p3.jpg")),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text("instagram"),
              onTap: () {
                launchUrl(Uri.parse(Link_Ins),
                    mode: LaunchMode.externalApplication);
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text("facebook"),
              onTap: () {
                launchUrl(Uri.parse(Link_face),
                    mode: LaunchMode.externalApplication);
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("about_my"),
              onTap: () {
                setState(() {
                   visible1=!visible1;
                });
               
              },
            ),
            Visibility(visible: visible1,child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("انا عمرو شويات\n طالب هندسه البرمجيات \nمن جامعه العلوم والتكنولوجيا الاردنيه",textAlign: TextAlign.right,style: TextStyle(),),
            )),
            ListTile(title: const Text("Dark Mode"),trailing:Switch(activeColor:Colors.black,value: dark, onChanged: (enabled){
              if(enabled==true){
                setState(() {
                  print("dark");
                   c=Brightness.dark;
                dark=true;
                });
                

              }else{
                setState(() {
                  print("light");
                     c=Brightness.light;
 dark=false;
                });
             
              }

            }) ,),
            
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 124, 124, 123),
      ),
      
      bottomNavigationBar:const ButtomHome(),
    );
  }
}
