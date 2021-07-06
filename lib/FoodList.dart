import 'package:flutter/material.dart';
import 'package:flutterfood_app/models/FoodModel.dart';

class FoodList extends StatelessWidget {

  List<FoodModel> foods = [
    FoodModel(
      'French Fries',
      'Brief detail of French Fries',
      "https://www.chickfillet.co/storage/products/TKyfKmqfZWDfqT6KXD7XiW6lOKCHxgXwF281LGJA.png",
        12,
    ),
    FoodModel(
      'Pizza',
      'Brief detail of Pizza',
      "https://media-cdn.tripadvisor.com/media/photo-s/0a/c0/7c/98/best-pizza-in-lahore.jpg",
      16,
    ),
    FoodModel(
      'Sandwich',
      'Brief detail of Sandwich',
      "https://pngimg.com/uploads/sandwich/sandwich_PNG45.png",
      10,
    ),
    FoodModel(
      'Samosa',
      'Brief detail of Samosa',
      "https://www.cookwithmanali.com/wp-content/uploads/2019/08/Homemade-Samosa-480x270.jpg",
      6,
    ),
  FoodModel(
  'Soft Drinks',
  'Brief detail of Soft Drinks',
  "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-asia.com/article/2018/03/29/soft-drink-health-concerns-not-yet-trickled-down-into-social-media-users-mentions-of-brands/7819019-1-eng-GB/Soft-drink-health-concerns-not-yet-trickled-down-into-social-media-users-mentions-of-brands.jpg",
  10,
  ),
    FoodModel(
      'Ice Cream',
      'Brief detail of Ice Cream',
      "https://d2cbg94ubxgsnp.cloudfront.net/Pictures/1024x536/4/0/8/132408_shutterstock_406445776.jpg",
      8,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.white,),
                onPressed: (){},
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search,color: Colors.white,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.settings,color: Colors.white,),
                      onPressed: (){},
                    )
                  ],
                ),
                ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Foody',style: TextStyle(fontSize: 48,color: Colors.white),),
                Text('  App',style: TextStyle(fontSize: 38,color: Colors.white,fontWeight: FontWeight.w100),)
              ]
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 6),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index){
                    return Row(
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network("${foods[index].pic}",width: 60,),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(foods[index].name,style: TextStyle(fontSize: 16,color: Colors.black),),
                              Text(foods[index].detail,style: TextStyle(fontSize: 10,color: Colors.black87),),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Text(foods[index].price.toString(),style: TextStyle(fontSize: 14,color: Colors.red),),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => Divider() ,
                  itemCount: foods.length,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
