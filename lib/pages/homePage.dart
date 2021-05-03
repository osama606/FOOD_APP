import 'package:flutter/material.dart';
import 'package:food_app/widget/_TapOffersCard.dart';
import 'package:food_app/widget/myTitle.dart';
import 'package:food_app/widget/popularFoodCard.dart';
import 'package:food_app/widget/searchPar.dart';
import 'package:food_app/widget/sectionCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe2e2e9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: mytitle(title: "Explore", fontSize: 30)),
                SearchPar(),
                Container(
                  height: 100,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: titles.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return sectionCrad(
                          icon: icons[index], title: titles[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: mytitle(title: "Popular Food ", fontSize: 16),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return popularFoodCard();
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: mytitle(title: "Top Offers", fontSize: 16),
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Tapofferscard();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}


List icons = [
  Icons.foundation_outlined,
  Icons.food_bank_outlined,
  Icons.food_bank_sharp,
  Icons.no_food_sharp,
  Icons.emoji_food_beverage_outlined,
  Icons.foundation_outlined,
  Icons.food_bank_outlined,
];
List titles = [
  "Asian",
  "Amercion",
  "Egyption",
  "Pizza",
  "Sushi",
  "Asian",
  "Amercion",
];
