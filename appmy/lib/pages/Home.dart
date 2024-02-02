import 'package:appmy/Shared/shared.dart';

import 'package:appmy/widgets/Home_buttom.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Visibility(visible: visible1,child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("انا عمرو شويات\n طالب هندسه البرمجيات \nمن جامعه العلوم والتكنولوجيا الاردنيه",textAlign: TextAlign.right,style: TextStyle(),),
            ))
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 124, 124, 123),
      ),
      
      bottomNavigationBar:ButtomHome(),
    );
  }
}
