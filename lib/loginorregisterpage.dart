
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/loginpage.dart';
import 'package:fooddelivery/registerpage.dart';

class registerorlogin extends StatefulWidget {
  const registerorlogin({super.key});

  @override
  State<registerorlogin> createState() => _registerorloginState();
}

class _registerorloginState extends State<registerorlogin> {

bool showLoginPage=true;

  void togglepages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
    return Loginpage(onTap: togglepages);
   }else{
    return Registerpage(onTap: togglepages,);
   }
  }
}