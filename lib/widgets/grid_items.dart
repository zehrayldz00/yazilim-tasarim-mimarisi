import 'package:flutter/material.dart';
import 'package:shop_app/patterns/colors_flyweight.dart';
import 'package:shop_app/screens/item_screen.dart';

class GridItems extends StatelessWidget {
  var pNames = [
    "Apple Watch -M2",
    "White Tshirt",
    "Nike Shoe",
    "Ear Headphone",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pNames.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: box, //colors_flyweight
                  boxShadow: [
                    BoxShadow(
                      color: b26, //colors_flyweight
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "30% off ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: ra,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/${pNames[index]}.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pNames[index],
                            style: TextStyle(
                              fontSize: 17,
                              color: b.withOpacity(0.8), //colors_flyweight
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(children: [],)
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
