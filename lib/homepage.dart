
import 'package:flutter/material.dart';
import 'package:fooddelivery/food.dart';
import 'package:fooddelivery/foodpage.dart';
import 'package:fooddelivery/mycurrentlocation.dart';
import 'package:fooddelivery/mydescriptionbox.dart';
import 'package:fooddelivery/mydrawer.dart';
import 'package:fooddelivery/myfoodtile.dart';
import 'package:fooddelivery/mytabbar.dart';
import 'package:fooddelivery/restaurant.dart';
import 'package:fooddelivery/silverappbar.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {

   //tab controller
   late TabController _tabController;
   
   @override
  void initState() {
    _tabController=TabController(length: FoodCategory.values.length, vsync: this);
    super.initState();
  }

    @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food> _filtermenuByCategory(FoodCategory category,List<Food> fullMenu){
    return fullMenu.where((food)=> food.category==category).toList();

  }

  //return list of food in given category
  List<Widget> getfoodinthtisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category){

      //get category menu
      List<Food> categoryMenu=_filtermenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){

          //get individual food
          final food=categoryMenu[index];
          //return foodtile ui
          return foodTile(food: food, onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>  Foodpage(food: food),))
              
          );
      });
    } ).toList();

  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      body: NestedScrollView(headerSliverBuilder: (context,innerBoxIsScrolled)=>[
        Silverappbar(title: Mytabbar(tabController: _tabController), child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(indent: 25,endIndent: 25,color: Theme.of(context).colorScheme.secondary,),
            //my current location
            Mycurrentlocation(),


            //description box
           const Mydescriptionbox(),


          ],
        ))
      ],
      body: Consumer<Restaurant>(builder: (context,restaurant,child)=>TabBarView(
        controller: _tabController,
        children: getfoodinthtisCategory(restaurant.menu)
        )

      )
      ),
    );
  }
}