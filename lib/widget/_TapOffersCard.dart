import 'package:flutter/material.dart';
class Tapofferscard extends StatelessWidget {
  const Tapofferscard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(6),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1519864664081-808516951b0c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pasta With Ham",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                    Text(
                      "italin recipe for y ou ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                "\$30.99",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.indigo),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(11),
            child: Divider(color: Colors.black,),
          ),
        ],
      ),
    );
  }
}
