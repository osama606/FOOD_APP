import 'package:flutter/material.dart';

class popularFoodCard extends StatelessWidget {
  const popularFoodCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 14,left: 8),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1605875870619-471c2acd48aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=360&q=80",
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14,left: 8),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pasta With Ham",
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text("4.2"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.indigo,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.indigo,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.indigo,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  Text("[12+]"),
                                ],
                              ),
                              SizedBox(width: 30,),
                              Row(
                                children: [
                                  Text(
                                    "\$25",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}