import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/HomeScreen.dart';
import 'package:flutter_application_1/common/category_list.dart';
import 'package:flutter_application_1/common/custom_app_bar.dart';
import 'package:flutter_application_1/common/custom_side_menu.dart';
import 'package:flutter_application_1/theme/theme_manager.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ShopScreen(),
    CartScreen(),
    AccountScreen(),
    OfferScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offer',
          ),
        ],
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "SHOP SCREEN",
      ),
      drawer: SideMenuDrawer(), // Add the SideMenuDrawer
      body: Text('Shop Screen'),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "CART SCREEN",
      ),
      drawer: SideMenuDrawer(), // Add the SideMenuDrawer
      body: Text('cart Screen'),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Account Screen'),
    );
  }
}

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Offer Screen'),
    );
  }
}
