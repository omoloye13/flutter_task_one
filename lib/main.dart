import 'package:flutter/material.dart';
import 'package:task_two/widgets/food_item.dart';
import 'package:task_two/widgets/recommended_food_section.dart';
import 'package:task_two/widgets/search_filter.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Menu button pressed');
            },
          ),

          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 20,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/images/profile3.jpg'),
                ),
              ),
            ),
          ],

        ),

        body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            // crossAxisAlignment:CrossAxisAlignment.start,
            // Adjust the padding as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Grab Your ",
                    style: TextStyle(
                       fontSize: 16.0,
                       fontWeight: FontWeight.bold,
                       )
                ),
                Text(
                    "Delicious Food",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )

                ),
                SearchFilterWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // Adjust as needed
                  children: [
                    FoodItem(
                      name: 'Burger',
                      image: 'assets/images/burger.jpg',
                    ),

                    FoodItem(
                      name: 'Burger',
                      image: 'assets/images/burger-2.jpg',
                    ),

                    FoodItem(
                      name: 'Burger',
                      image: 'assets/images/burger-3.jpg',
                    ),
                  ],
                ),
                RecommendedFoodSection(),
              ],

            ),
          ),
        ),

        ),
      ),
    );
  }
}