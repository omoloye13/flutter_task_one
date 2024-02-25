import 'package:flutter/material.dart';
import 'package:task_two/widgets/FoodCard.dart';


class RecommendedFoodSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
          child: Text(
            'Recommended Food',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.75, // Adjust aspect ratio as needed
          ),
          itemCount: 4, // Total number of food items
          itemBuilder: (BuildContext context, int index) {
            return FoodCard(
              name: 'Food ${index + 1}',
              price: '\$10', // Example price
              image: 'assets/images/burger-3.jpg', // Replace with actual image path
            );
          },
        ),
      ],
    );
  }
}