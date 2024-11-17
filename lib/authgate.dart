import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/homepage.dart';
import 'package:fooddelivery/loginorregisterpage.dart';

class authgate extends StatelessWidget {
  const authgate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (context,snapshot){

//user is loggedin
if(snapshot.hasData){
  return const Homepage();
}




//user is not loggedin
else{
  return const registerorlogin();
}



      }
      ),
    );
  }
}