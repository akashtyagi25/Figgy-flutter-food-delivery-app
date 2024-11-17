import 'package:flutter/material.dart';
import 'package:fooddelivery/mybutton.dart';
import 'package:fooddelivery/mycarttile.dart';
import 'package:fooddelivery/paymentpage.dart';
import 'package:fooddelivery/restaurant.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder:(context, restaurant, child) {
      //cart 
      final userCart=restaurant.cart;

      //scaffold
      return Scaffold(
        appBar: AppBar(
          title: const Text("cartpage"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,

          centerTitle: true,
          actions: [
            //clear cart button
            IconButton(
              onPressed: (){
                showDialog(context: context, builder: (context)=> AlertDialog(
                  title:const Text("are you want to sure to clear the cart?"),
                  actions: [
                    //cancel button 
                    TextButton(onPressed: ()=> Navigator.pop(context),

                     child: const Text("cancel")),

                    //yes button
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                        restaurant.clearCart();

                    }, child: const Text("yes"))

                  ],
                ));
              }, 
              icon: const Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [

            //list of cart
            Expanded(
              child: Column(
                children: [
                   userCart.isEmpty 
                   ? const Expanded(
                    child: Center(
                      child:  Text("cart is empty")
                      )
                      ) 
                      : Expanded(child: ListView.builder(itemCount: userCart.length,itemBuilder: (context,index){
              
                    //get individual cart
                          final cartItem=userCart[index];
              
                    //return cart tile ui
                    return MycartTile(cartitem: cartItem);
                  }
                   
                  ))
                ],
              ),
            ),

            //button
            Mybutton(onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> const Paymentpage())),
             text: "go to checkout"),
            
            const SizedBox(height: 25,)




          ],
        ),
      );
      
    },);
  }
}