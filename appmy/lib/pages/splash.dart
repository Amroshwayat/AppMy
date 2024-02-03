// import 'package:appmy/pages/sign_up.dart';
// import 'package:appmy/pages/singn.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class CheckUser extends StatefulWidget {
//   const CheckUser({super.key});

//   @override
//   State<CheckUser> createState() => _CheckUserState();
// }

// class _CheckUserState extends State<CheckUser> {
//   @override
// void initState() {
//     // TODO: implement initState
//     check();
//     super.initState();
//   }
//   check()async{
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
// if(prefs.getString("check")!=null){
//   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
//     return const SigenIn() ;
//   }), (route) => false);

// }else{
//    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
//     return const SigenUp();
//   }), (route) => false);
// }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(

//     );
//   }
// }