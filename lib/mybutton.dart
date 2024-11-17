import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {

final Function()? onTap;
final String text;

  const Mybutton({super.key,required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Theme.of(context).colorScheme.inversePrimary),
          ),
        ),
      ),
    );
  }
}