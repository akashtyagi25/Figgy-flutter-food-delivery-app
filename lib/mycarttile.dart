import 'package:flutter/material.dart';
import 'package:fooddelivery/cartitem.dart';
import 'package:fooddelivery/myquantityselector.dart';
import 'package:fooddelivery/restaurant.dart';
import 'package:provider/provider.dart';

class MycartTile extends StatelessWidget {
  final Cartitem cartitem;
  const MycartTile({super.key,required this.cartitem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder:(context, restaurant, child) => Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //food image
                ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(cartitem.food.imagePath,height: 50,width: 100,)),
            
                const SizedBox(width: 10,),
            
                //name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        //food name
                        Text(cartitem.food.name),
            
                        //food price
                               Text('\$${cartitem.food.price}',
                               style: TextStyle(
                                color: Theme.of(context).colorScheme.primary
                               ),
                               ),

                               const SizedBox(height: 10,),

                                 Myquantityselector(
                                   quantity: cartitem.quantity, 
                                       food: cartitem.food,
                                        onDecrement: (){
                                         restaurant.removefromCart(cartitem);
                                         }, 
                                      onIncrement: (){
                                  restaurant.addtoCart(cartitem.food, cartitem.selectedAddons);
                                     }
                                 )


                  ],
                ),
              

            
                //++ or -- quantity
              
            
              ],
            ),
          ),

          //addons
          SizedBox(
            height: cartitem.selectedAddons.isEmpty ? 0 : 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 10,bottom: 10,left: 10),
              children: cartitem.selectedAddons.map((addon)=> Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: FilterChip(label: Row(
                  children: [
                    //addon name
                    Text(addon.name),
                
                    //addon price
                    Text('(\$${addon.price})'),
                
                
                  ],
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary
                  )
                ),
                 onSelected: (value){},
                backgroundColor: Theme.of(context).colorScheme.secondary,
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 12,
                ),
                ),
              )).toList(),
            ),
          )


        ],
      ),
    ),);
  }
}