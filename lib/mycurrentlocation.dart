import 'package:flutter/material.dart';
import 'package:fooddelivery/restaurant.dart';
import 'package:provider/provider.dart';

class Mycurrentlocation extends StatelessWidget {


   Mycurrentlocation({super.key});

  final textController=TextEditingController();

  void openlocationSearchBox(BuildContext context){
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: const Text("your location"),
      content:  TextField(controller: textController,decoration:  const InputDecoration(
        hintText: "enter address...."
      ),),
      actions: [
        //cancel button
        MaterialButton(onPressed: (){
          Navigator.pop(context);
          textController.clear();
          
        } ,child: const Text("cancel"),),
        

        //save button
         MaterialButton(onPressed: (){
          //update delivery address
          String newAddress=textController.text;
          context.read<Restaurant>().updatedeliveryAddress(newAddress);
          Navigator.pop(context);
          textController.clear();
         

         } ,child: const Text("save"),),


      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("deliver now",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          GestureDetector(
            onTap: () => openlocationSearchBox(context),
            child: Row(
              children: [
                //address
               Consumer<Restaurant>(builder:(context, restaurant, child) =>  
               Text(restaurant.deliveryAddress,
               style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold
                ),
                ),
                ),
                  
                //dropdown menu
                Icon(Icons.keyboard_arrow_down_rounded,color: Theme.of(context).colorScheme.inversePrimary,)
                  
                  
              ],
            ),
          )
        ],
      ),
    );
  }
}