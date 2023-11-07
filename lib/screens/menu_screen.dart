import 'dart:collection';

import 'package:a1/models/item_data.dart';
import 'package:a1/models/menu_list.dart';
import 'package:a1/screens/orders_screen.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<Item> menuItems = ItemData().items;
  String addText = 'Add';
  final List<Item> selectedItems = [];
  void getSelectedItems(String title, String price, String toAddRmv) {
    if (toAddRmv == 'Add') {
      selectedItems.add(
        Item(itemName: title, price: price),
      );
    } else {
      selectedItems.removeWhere((item) => item.itemName == title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Menu'),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent,
              ),
              onPressed: () {
                // print(selectedItems);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OrdersScreen(selectedItemList: selectedItems),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.add_shopping_cart_outlined,
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) => MenuList(
            title: menuItems[index].itemName,
            price: menuItems[index].price,
            addText: addText,
            getSelectedItems: getSelectedItems,
          ),
        ),
      ),
    );
  }
}
