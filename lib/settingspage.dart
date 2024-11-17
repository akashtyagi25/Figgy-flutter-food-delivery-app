import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/themeprovider.dart';
import 'package:provider/provider.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.only(left: 25,top: 10,right: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  //darkmode
                  Text("darkmode",style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.inversePrimary),),
            
            
                //switch
                CupertinoSwitch(value: Provider.of<Themeprovider>(context,listen: false).isdarkMode, 
                onChanged: (values)=>Provider.of<Themeprovider>(context,listen: false).toggletheme(),
                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}