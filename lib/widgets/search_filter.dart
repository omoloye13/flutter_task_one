
import 'package:flutter/material.dart';

class SearchFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey[200],
            border: Border.all(color: Colors.red),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search food...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            icon: Icon(Icons.filter_list),
            color: Colors.white,
            onPressed: () {
              // Add your filter icon onPressed logic here
            },
          ),
        ),
      ],
    );
  }
}
