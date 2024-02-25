import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String name;
  final String image;

  const FoodItem({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
