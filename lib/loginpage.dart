import 'package:flutter/material.dart';
import 'package:fooddelivery/authservice.dart';
import 'package:fooddelivery/mybutton.dart';
import 'package:fooddelivery/mytextfield.dart';

class Loginpage extends StatefulWidget {
  final void Function()? onTap;

   const Loginpage({super.key,required this.onTap});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
//text editing controller
final TextEditingController emailController=TextEditingController();

final TextEditingController passwordController=TextEditingController();

//login method
void login() async{
  /* fill out authentication here*/
  //get instance of auth service
  final _authService=Authservice();

  //try sign in
  try{
    await _authService.signinwithEmailPassword(
      emailController.text, passwordController.text);
  }
    //display errors
    catch(e){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text(e.toString()),
      ));
    }
 

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.shopping_cart_outlined,size: 100,color: Theme.of(context).colorScheme.inversePrimary,),

            const SizedBox(height: 25,),
        
            //app message/slogan
            Text("food delivery app",style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.inversePrimary),),

            const SizedBox(height: 25,),
        
        
            //email textfield
            Mytextfield(
              controller: emailController, 
              hinttext: "Email", 
              obscuretext: false
              ),

              const SizedBox(height: 10,),
        
        
            //password textfield
              Mytextfield(
              controller: passwordController, 
              hinttext: "password", 
              obscuretext: true
              ),

              const SizedBox(height: 25,),

              //signin button
              Mybutton(onTap: login,

               text: "sign in"),

              const SizedBox(height: 25,),
        
        
            //not a member?register 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("not a member?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                const SizedBox(width: 5,),
                 GestureDetector(
                  onTap: widget.onTap,
                  child: Text("register now",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),))
              ],
            )
        
        
          ],
        ),
      ),
    );
  }
}
