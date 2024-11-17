import 'package:flutter/material.dart';
import 'package:fooddelivery/authservice.dart';
import 'package:fooddelivery/mydrawertile.dart';
import 'package:fooddelivery/settingspage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  void logout(){
    final authService=Authservice();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(Icons.person_2_outlined,size: 80,color: Theme.of(context).colorScheme.inversePrimary,),
          ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),


          //home list tile
          Mydrawertile(icon: Icons.home, onTap: ()=> Navigator.pop(context), text: "H.O.M.E"),


          //settings tile
           Mydrawertile(icon: Icons.settings, onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Settingspage()));
            
           }, text: "S.E.T.T.I.N.G.S"),

            const Spacer(),

          //logout tile
           Mydrawertile(icon: Icons.logout, onTap: logout, text: "L O G O U T"),


           const SizedBox(height: 25,),


        ],
        
      ),
    );
  }
}