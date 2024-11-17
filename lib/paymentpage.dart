import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:fooddelivery/deliveryprogressPage.dart';
import 'package:fooddelivery/mybutton.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
 String cardNumber='';
 String expiryDate='';
 String cardHolderName='';
 String cvvCode='';
 bool iscvvFocusd= false;

 //user wants to pay
 void usertappedPay(){
  if(formKey.currentState!.validate()) {
    //only show dialog if form is valid
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: const Text("confirm payment"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("card number: $cardNumber"),
            Text("expiry date: $expiryDate"),
            Text("card holder name: $cardHolderName"),
            Text("CVV: $cvvCode")
          ],
        ),
      ),
      actions: [
        //cancel button
        TextButton(onPressed: ()=> Navigator.pop(context), child: const Text("cancel")),
       
        //yes button
        TextButton(onPressed: (){
          Navigator.pop(context);
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const Deliveryprogresspage()));
        }, 
        child: const Text("yes"))



      ],
      
    ));
  }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("checkout"),
      ),
      body: Column(
        children: [
            //credit card
            CreditCardWidget(
              cardNumber: cardNumber, 
              expiryDate: expiryDate, 
              cardHolderName: cardHolderName, 
              cvvCode: cvvCode, 
              showBackView: iscvvFocusd, 
              onCreditCardWidgetChange:(p0) {
                
              },
              ),
              
      
              //credit card form
              CreditCardForm(
                cardNumber: cardNumber,
                 expiryDate: expiryDate, 
                 cardHolderName: cardHolderName, 
                 cvvCode: cvvCode, 
                 onCreditCardModelChange:(data) {
                  setState(() {
                    cardNumber=data.cardNumber;
                    expiryDate=data.expiryDate;
                    cardHolderName=data.cardHolderName;
                    cvvCode=data.cvvCode;
                  });
                   
                 },
                  formKey: formKey
                  ),
      
                  const Spacer(),
      
                  Mybutton(onTap: usertappedPay,
                   text: "pay now"
                   ),
      
                   const SizedBox(height: 25,),
      
      
      
        ],
      ),
       
    );
  }
}