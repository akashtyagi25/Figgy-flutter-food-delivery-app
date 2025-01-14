import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
final TextEditingController controller;
final String hinttext;
final bool obscuretext;


  const Mytextfield({super.key,required this.controller,required this.hinttext,required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
      
          controller: controller,
          obscureText: obscuretext,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary
              )
            ),
            hintText: hinttext,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary) 
          ),
      
      ),
    );
  }
}