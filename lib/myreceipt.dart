import 'package:flutter/material.dart';
import 'package:fooddelivery/restaurant.dart';
import 'package:provider/provider.dart';

class Myreceipt extends StatelessWidget {
  const Myreceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25,right: 25,top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text("thank you for your order"),
           const SizedBox(height: 25,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
        
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(builder:(context, restaurant, child) => Text(restaurant.displayCartReceipt()),),
            ),
        
             const SizedBox(height: 25,),
        
               const Text("estimated delivery time is 4:50 PM"),
        
        
          ],
        ),
      ),
    );
  }
}