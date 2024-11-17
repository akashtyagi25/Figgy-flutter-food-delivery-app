import 'package:flutter/material.dart';
import 'package:fooddelivery/authservice.dart';
import 'package:fooddelivery/mybutton.dart';
import 'package:fooddelivery/mytextfield.dart';

class Registerpage extends StatefulWidget {
   final  void Function()? onTap;


  const Registerpage({super.key,required this.onTap});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
 //text editing controller
final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();
final TextEditingController confirmpasswordController=TextEditingController();

 void register(BuildContext context){
//get auh service;
final _auth=Authservice();

//password match create user
if(passwordController.text==confirmpasswordController.text){
try{
  _auth.signUpwithEmailPassword(emailController.text,passwordController.text);

}catch  (e){
   showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text(e.toString()),
  )
  );
}
}
//if password don't match=>show error to user
else{
   showDialog(context: context, builder: (context)=>const AlertDialog(
    title: Text("password dont match. try again!"),
  )
  );
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(Icons.delivery_dining_outlined,size: 100,color: Theme.of(context).colorScheme.inversePrimary,),
          
              const SizedBox(height: 25,),
          
              //app message/slogan
              Text("Order food that you want",style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.inversePrimary),),
          
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
                  const SizedBox(height: 10,),
          
          
              //confirm password textfield
                Mytextfield(
                controller: confirmpasswordController, 
                hinttext: "confirm password", 
                obscuretext: true
                ),
          
                const SizedBox(height: 25,),
          
                //signup button
                Mybutton(onTap: ()=> register(context),
          
                 text: "sign up"),
          
                const SizedBox(height: 25,),
          
          
              //already have an account? login here 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("already have an account?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                  const SizedBox(width: 5,),
                   GestureDetector(
                    onTap: widget.onTap,
                    child: Text("login Now",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),))
                ],
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}