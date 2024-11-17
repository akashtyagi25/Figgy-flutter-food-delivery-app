import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/cartitem.dart';
import 'package:fooddelivery/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
//list of food menu
final List<Food> _menu=[


//burgers
Food(
  name: "classic veggie burger", 
  description: "A wholesome patty made from fresh vegetables and spices, topped with lettuce, tomato, and creamy mayo in a toasted bun.", 
  imagePath: "assets/images/burgers/burger1.png", 
  price: 0.99, 
  category: FoodCategory.burgers, 
  availableAddons: [
    Addon(name: "cheddar cheese", price: 0.99),
     Addon(name: "bacon", price: 1.99),
      Addon(name: "lettuce", price: 2.99),
  ]
  ),

  Food(
  name: "cheese burst", 
  description: "A juicy patty loaded with oozing melted cheese, offering a rich and creamy indulgence with every bite.", 
  imagePath: "assets/images/burgers/burger2.png", 
  price: 0.99, 
  category: FoodCategory.burgers, 
  availableAddons: [
    Addon(name: "tomato", price: 0.99),
     Addon(name: "onions", price: 1.99),
      Addon(name: "pickels", price: 2.99),
  ]
  ),

  Food(
  name: "chicken burger", 
  description: "A tender and flavorful chicken patty, paired with crispy lettuce, tomato, and tangy mayo in a soft bun.", 
  imagePath: "assets/images/burgers/burger3.png", 
  price: 0.99, 
  category: FoodCategory.burgers, 
  availableAddons: [
    Addon(name: "avacardo", price: 0.99),
     Addon(name: "fried egg", price: 1.99),
      Addon(name: "mushrooms", price: 2.99),
  ]
  ),

  Food(
  name: "paneer burger", 
  description: "A grilled or crispy paneer patty, spiced to perfection and layered with fresh veggies and a tangy sauce.", 
  imagePath: "assets/images/burgers/burger4.png", 
  price: 0.99, 
  category: FoodCategory.burgers, 
  availableAddons: [
    Addon(name: "Jalapenos (Fresh or Pickled)", price: 0.99),
     Addon(name: "Mustard (Yellow, Dijon, or Spicy)", price: 1.99),
      Addon(name: "ketchup", price: 2.99),
  ]
  ),

  Food(
  name: "double patty burger", 
  description: "Two stacked patties for double the flavor, loaded with cheese, veggies, and a signature sauce for an irresistible bite.", 
  imagePath: "assets/images/burgers/burger5.png", 
  price: 0.99, 
  category: FoodCategory.burgers, 
  availableAddons: [
    Addon(name: "extra cheese", price: 0.99),
     Addon(name: "bacon", price: 1.99),
      Addon(name: "avacardo", price: 2.99),
  ]
  ),


  
  


//salads
Food(
  name: "caesar salad", 
  description: "A classic mix of crisp romaine lettuce, Parmesan cheese, crunchy croutons, and creamy Caesar dressing.", 
  imagePath: "assets/images/salad/salad1.png", 
  price: 0.99, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "grilled chicken", price: 0.99),
     Addon(name: "smoked salmon", price: 1.99),
      Addon(name: "hard-boiled eggs", price: 2.99),
  ]
  ),

  Food(
  name: "greek salad", 
  description: "A refreshing combination of tomatoes, cucumbers, red onions, olives, and feta cheese, dressed with olive oil and oregano.", 
  imagePath: "assets/images/salad/salad2.png", 
  price: 0.99, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "avacardo slices", price: 0.99),
     Addon(name: "feta cheese", price: 1.99),
      Addon(name: "croutons", price: 2.99),
  ]
  ),

  Food(
  name: "caprese salad", 
  description: "A simple yet flavorful salad of fresh mozzarella, ripe tomatoes, and basil, drizzled with olive oil and balsamic glaze.", 
  imagePath: "assets/images/salad/salad3.png", 
  price: 0.99, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "roasted vegetables", price: 0.99),
     Addon(name: "nuts", price: 1.99),
      Addon(name: "seeds", price: 2.99),
  ]
  ),

  Food(
  name: "cobb salad", 
  description: "A hearty salad featuring rows of grilled chicken, avocado, bacon, hard-boiled eggs, tomatoes, and blue cheese on a bed of greens.", 
  imagePath: "assets/images/salad/salad4.png", 
  price: 0.99, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "fresh herbs", price: 0.99),
     Addon(name: "bacon bits", price: 1.99),
      Addon(name: "shrimp or prawns", price: 2.99),
  ]
  ),

  Food(
  name: "Mediterranean Chickpea Salad", 
  description: "A protein-packed salad with chickpeas, cherry tomatoes, cucumbers, red onions, olives, and feta cheese, tossed in a zesty lemon-herb dressing.", 
  imagePath: "assets/images/salad/salad5.png", 
  price: 0.99, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "fresh fruits", price: 0.99),
     Addon(name: "cheese", price: 1.99),
      Addon(name: "beans", price: 2.99),
  ]
  ),


//sides
Food(
  name: "Pizza", 
  description: "A savory dish with a crispy crust, topped with melted cheese, flavorful sauce, and a variety of toppings.", 
  imagePath: "assets/images/side/side1.png", 
  price: 0.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "extra cheese", price: 0.99),
     Addon(name: "chili flakes", price: 1.99),
      Addon(name: "fresh basil", price: 2.99),
  ]
  ),

  Food(
  name: "French fries", 
  description: "Crispy, golden potato sticks, perfect as a snack or side dish.", 
  imagePath: "assets/images/side/side2.png", 
  price: 0.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "cheese sauce", price: 0.99),
     Addon(name: "truffle oil", price: 1.99),
      Addon(name: "paprika powder", price: 2.99),
  ]
  ),

  Food(
  name: "fried chicken", 
  description: "Crispy on the outside, juicy on the inside, fried chicken is a flavorful delight.", 
  imagePath: "assets/images/side/side3.png", 
  price: 0.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "honey mustard dip", price: 0.99),
     Addon(name: "hot sauce", price: 1.99),
      Addon(name: "pickles", price: 2.99),
  ]
  ),

  Food(
  name: "Eggs", 
  description: "Versatile and protein-packed, eggs can be cooked in countless ways for any meal.", 
  imagePath: "assets/images/side/side4.png", 
  price: 0.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "avacardo slices", price: 0.99),
     Addon(name: "grated cheese", price: 1.99),
      Addon(name: "chopped chives", price: 2.99),
  ]
  ),

  Food(
  name: "Peanut butter", 
  description: "A creamy or crunchy spread packed with nutty flavor and rich in protein.", 
  imagePath: "assets/images/side/side5.png", 
  price: 0.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "sliced bananas", price: 0.99),
     Addon(name: "honey drizzle", price: 1.99),
      Addon(name: "chia seeds", price: 2.99),
  ]
  ),


//desserts
Food(
  name: "gulab jamun", 
  description: "A classic Indian dessert made of soft, syrup-soaked milk dumplings, rich in flavor and sweetness.", 
  imagePath: "assets/images/desserts/dessert1.png", 
  price: 0.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "saffron strands", price: 0.99),
     Addon(name: "Chopped Pistachios", price: 1.99),
      Addon(name: "Vanilla Ice Cream", price: 2.99),
  ]
  ),

  Food(
  name: "Ice Cream", 
  description: "Creamy and delightful frozen treats available in a variety of flavors to satisfy every craving.", 
  imagePath: "assets/images/desserts/dessert2.png", 
  price: 0.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "chocolate sauce", price: 0.99),
     Addon(name: "rainbow sprinkles", price: 1.99),
      Addon(name: "crushed cookies", price: 2.99),
  ]
  ),

  Food(
  name: "Tiramisu", 
  description: "A luxurious Italian dessert layered with coffee-soaked ladyfingers, creamy mascarpone, and cocoa.", 
  imagePath: "assets/images/desserts/dessert3.png", 
  price: 0.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "dark chocolate", price: 0.99),
     Addon(name: "whipped cream", price: 1.99),
      Addon(name: "espresso shot", price: 2.99),
  ]
  ),

  Food(
  name: "brownie", 
  description: "A rich, chocolatey baked dessert with a soft, fudgy center and crisp edges.", 
  imagePath: "assets/images/desserts/dessert4.png", 
  price: 0.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "vanilla icecreams", price: 0.99),
     Addon(name: "walnuts", price: 1.99),
      Addon(name: "caramel sauce", price: 2.99),
  ]
  ),

  Food(
  name: "Cadbury dairy milk chocolate", 
  description: "A creamy, melt-in-your-mouth chocolate bar that delivers pure indulgence in every bite.", 
  imagePath: "assets/images/desserts/dessert5.png", 
  price: 0.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "crushed nuts", price: 0.99),
     Addon(name: "fresh strawberries", price: 1.99),
      Addon(name: "whipped cream", price: 2.99),
  ]
  ),


//drinks
Food(
  name: "Cold-drinks", 
  description: "refreshing, carbonated beverages available in various fruity and sweet flavors, perfect for pairing with any meal or cooling off on a hot day.", 
  imagePath: "assets/images/drinks/drink1.png", 
  price: 0.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "lemon slices", price: 0.99),
     Addon(name: "mint leaves", price: 1.99),
      Addon(name: "crushed ice", price: 2.99),
  ]
  ),

  Food(
  name: "Red Bull", 
  description: "popular energy drink designed to invigorate your body and mind with a burst of energy and a signature sweet and tangy flavor.", 
  imagePath: "assets/images/drinks/drink2.png", 
  price: 0.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "lime wedges", price: 0.99),
     Addon(name: "berry mix", price: 1.99),
      Addon(name: "crushed ice", price: 2.99),
  ]
  ),

  Food(
  name: "classic cheese burger", 
  description: " refreshing drink made with mint, lime, and soda water, perfect for a burst of cool and zesty flavors. Enjoy it as a classic or with added flavors.", 
  imagePath: "assets/images/drinks/drink3.png", 
  price: 0.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "flavoured syrup", price: 0.99),
     Addon(name: "cucumber", price: 1.99),
      Addon(name: "basil leaves", price: 2.99),
  ]
  ),

  Food(
  name: "Tea", 
  description: "comforting drink made by brewing leaves, herbs, or flowers, offering a variety of flavors and aromas to relax and refresh your senses.", 
  imagePath: "assets/images/drinks/drink4.png", 
  price: 0.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Honey", price: 0.99),
     Addon(name: "Lemon Slices", price: 1.99),
      Addon(name: "Ginger", price: 2.99),
  ]
  ),

  Food(
  name: "Coffee", 
  description: "bold and aromatic beverage, perfect for energizing your day. Made from roasted coffee beans, it offers a rich flavor that can be customized to your liking.", 
  imagePath: "assets/images/drinks/drink5.png", 
  price: 0.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "whipped cream", price: 0.99),
     Addon(name: "caramel drizzle", price: 1.99),
      Addon(name: "chocolate chips", price: 2.99),
  ]
  ),


];


//user cart
final List<Cartitem> _cart=[];



//delivery address which user can change/update
String _deliveryAddress='doiwala,dehradun';



//getters
List<Food> get menu=> _menu;
List<Cartitem> get cart=>_cart;
String get deliveryAddress=> _deliveryAddress;




//operations


//add to cart
void addtoCart(Food food,List<Addon> selectedAddons){
  //see if there is a cart item already with the same food and selected addons
  Cartitem? cartItem= _cart.firstWhereOrNull((item){
    //check if food item are the same
    bool isSameFood=item.food==food;

    //check if the selected addons are same
    bool isSameAddons=ListEquality().equals(item.selectedAddons, selectedAddons);

    return isSameFood && isSameAddons;

  });

  //if item already exists,increase its quantity
  if(cartItem!=null){
    cartItem.quantity++;
  }

  //otherwise,add new cart to the cart item
  else{
    _cart.add(Cartitem(food: food, selectedAddons: selectedAddons));
  }
  notifyListeners();

}


//remove from cart
void removefromCart(Cartitem cartItem){
  int cartIndex=_cart.indexOf(cartItem);

  if(cartIndex!= -1){
    if(_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    }else{
      _cart.removeAt(cartIndex);
    }
  }

  notifyListeners();
}

//get total price of cart
double getTotalPrice(){
  double total=0.0;

  for(Cartitem cartItem in _cart){
    double itemTotal=cartItem.food.price;

    for(Addon addon in cartItem.selectedAddons){
      itemTotal+=addon.price;
    }

    total+=itemTotal*cartItem.quantity;
  }

  return total; 
}

//get total number of items in cart
int getTotalItemCount(){
  int totalItemCount=0;

  for(Cartitem cartItem in _cart){
    totalItemCount+=cartItem.quantity;
  }

  return totalItemCount; 
}

//clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}


//update delivery address
void updatedeliveryAddress(String newAddress) {
  _deliveryAddress=newAddress;
  notifyListeners();
}


//helpers
//generate a receipt
String displayCartReceipt(){
  final receipt=StringBuffer();
  receipt.writeln("here's your receipt.");
  receipt.writeln();

  //format the date to include up to seconds only
  String formattedDate=DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("===========");

  for(final Cartitem in _cart){
    receipt.writeln("${Cartitem.quantity} x ${Cartitem.food.name} - ${_formatPrice(Cartitem.food.price)}");

    if(Cartitem.selectedAddons.isNotEmpty){
      receipt.writeln("   add-ons: ${_formatAddons(Cartitem.selectedAddons)}");

    }
    receipt.writeln();
  }

  receipt.writeln("=============");
  receipt.writeln();
  receipt.writeln("total items: ${getTotalItemCount()}");
   receipt.writeln("total items: ${_formatPrice(getTotalPrice())}");
   receipt.writeln();
   receipt.writeln("delivering to: $deliveryAddress");

   return receipt.toString();
}


//format double value into money
String _formatPrice(double price){
  return "\$${price.toStringAsFixed(2)}";
}

//format list of addons into a string summary
String _formatAddons(List<Addon> addons){
  return addons.map((addons)=> "${addons.name} (${_formatPrice(addons.price)})").join(", ");
}



}