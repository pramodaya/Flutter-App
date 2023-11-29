import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<IconData> categoryIcons;

  const CategoryList({Key? key, required this.categoryIcons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryIcons.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue, // Customize the color as needed
              child: Icon(
                categoryIcons[index],
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
