import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double price;
  final int starCount;

  ProductCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.starCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(20.0), // Adjust the radius as needed
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side - Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            // Right side - Title, Description, Stars, and Price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      // Stars
                      Row(
                        children: List.generate(
                          starCount,
                          (index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      // Price
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
