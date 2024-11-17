import 'package:flutter/material.dart';
import 'package:fooddelivery/food.dart';
import 'package:fooddelivery/mybutton.dart';
import 'package:fooddelivery/restaurant.dart';
import 'package:provider/provider.dart';

class Foodpage extends StatefulWidget {
  final Food food;
  final Map<Addon,bool> selectedAddons={};
   Foodpage({super.key,required this.food}){
    //intialize selected button to be false
    for(Addon addon in food.availableAddons){
      selectedAddons[addon]=false;
    }

   }

  @override
  State<Foodpage> createState() => _FoodpageState();
}

class _FoodpageState extends State<Foodpage> {
  
  //method to add to cart
  void addtoCart(Food food, Map<Addon,bool> selectedAddons){

    //close the current food page to go back to menu
    Navigator.pop(context);

    //formatting selectedaddons
    List<Addon> currentselectedAddons =[];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon]==true){
        currentselectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<Restaurant>().addtoCart(food, currentselectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scaffold button
        Scaffold(
      
     body:  SingleChildScrollView(
       child: Column(
        
        children: [
          //food image
          Image.asset(widget.food.imagePath),
       
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
            //food name
            Text(widget.food.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
       
             //food price
            Text( '\$${widget.food.price}',style:  TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 16),),
       
            const SizedBox(height: 10,),
            
            //food descriptions
            Text(widget.food.description,),
       
            const SizedBox(height: 10,),
       
           Divider(color: Theme.of(context).colorScheme.secondary,),
       
            const SizedBox(height: 10,),
       
            //addon
             Text("add-ons",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontSize: 16,fontWeight: FontWeight.bold),),
            
             const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.secondary),borderRadius: BorderRadius.circular(8)),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: widget.food.availableAddons.length,
                itemBuilder: (context,index){
                  //get individual addon
                  Addon addon=widget.food.availableAddons[index];
              
                  
                //return checbox ui
                return CheckboxListTile(
                  title: Text(addon.name),
                  subtitle: Text('\$${addon.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
              
                  value: widget.selectedAddons[addon], onChanged: (bool? value){
                    setState(() {
                      widget.selectedAddons[addon]=value!;
                    });
              
                });
              }),
            )
              ],
            ),
          ),
       
       
       
          //button-> add tocart
          Mybutton(onTap: ()=> addtoCart(widget.food,widget.selectedAddons), text: "add to cart"),

          const SizedBox(height: 25,),
       
       
        ],
           ),
     )
    ),


        //back button
        SafeArea(
          
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,shape: BoxShape.circle),
            child: IconButton(onPressed:()=> Navigator.pop(context), icon:const Icon(Icons.arrow_back_ios_rounded)),
            ),
          ),
        )


      ],
    );
  }
}