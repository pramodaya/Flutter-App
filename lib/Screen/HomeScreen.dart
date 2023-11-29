import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/category_list.dart';
import 'package:flutter_application_1/common/custom_app_bar.dart';
import 'package:flutter_application_1/common/custom_side_menu.dart';
import 'package:flutter_application_1/theme/theme_manager.dart';

import '../common/product_card.dart';

// Assume you have the ProductCard widget defined

class HomeScreen extends StatelessWidget {
  final List<IconData> categoryIcons = [
    Icons.list_alt_rounded,
    Icons.car_crash,
    Icons.shop_2,
    Icons.list_alt_rounded,
    Icons.car_crash,
    Icons.shop_2,
    Icons.list_alt_rounded,
    Icons.car_crash,
    Icons.shop_2,
    // Add more category icons as needed
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Home",
      ),
      drawer: SideMenuDrawer(), // Add the SideMenuDrawer
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to the Home Screen!',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              // Use the CategoryList widget
              CategoryList(categoryIcons: ThemeManager.categoryIcons),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform any action you want when the "Logout" button is pressed
                },
                child: const Text('Logout'),
              ),
              const SizedBox(height: 20),
              // Display 10 ProductCards in a scrollable vertical list
              SizedBox(
                height: 500, // Adjust the height as needed
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    // You can replace the sample data with actual data for each card
                    return ProductCard(
                      imagePath: 'https://placekitten.com/200/200',
                      title: 'Product $index',
                      description: 'Description for Product $index',
                      price: 19.99 + index,
                      starCount: (index % 5) + 1,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
