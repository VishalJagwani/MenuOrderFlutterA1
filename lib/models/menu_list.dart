import 'package:a1/models/item.dart';
import 'package:a1/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'item_data.dart';

class MenuList extends StatefulWidget {
  final String title;
  final String price;
  final String addText;
  final Function(String, String, String) getSelectedItems;

  const MenuList({
    required this.title,
    required this.price,
    required this.addText,
    required this.getSelectedItems,
  });

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  bool isAdded = false;
  @override
  void initState() {
    super.initState();
  }

  // void addItems(String title, String price) {
  //   selectedItems.add(
  //     Item(itemName: title, price: price),
  //   );
  //   print(selectedItems);
  // }
  //
  // void removeItems(String title, String price) {
  //   selectedItems.remove(
  //     Item(itemName: title, price: price),
  //   );
  //   print(selectedItems);
  // }

  @override
  Widget build(BuildContext context) {
    final addText = isAdded ? 'Added' : widget.addText;
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Rs. ${widget.price}',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ],
      ),
      trailing: TextButton(
        onPressed: () {
          setState(() {
            isAdded = !isAdded;
          });
          widget.getSelectedItems(widget.title, widget.price, addText);
        },
        child: Text(
          addText,
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
      ),
      leading: Icon(
        Icons.fastfood_rounded,
        color: Colors.green,
        size: 40.0,
      ),
    );
  }
}
