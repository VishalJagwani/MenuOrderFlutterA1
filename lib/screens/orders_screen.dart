import 'package:a1/models/item_data.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';

class OrdersScreen extends StatefulWidget {
  List<Item> selectedItemList = ItemData().items;
  OrdersScreen({required this.selectedItemList});
  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  late String totalAmt;
  @override
  void initState() {
    getTotal(widget.selectedItemList);
  }

  void getTotal(List<Item> selectedList) {
    double total = 0.0;
    for (Item i in selectedList) {
      total += double.parse(i.price);
    }
    totalAmt = total.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.food_bank,
            color: Colors.pinkAccent,
            size: 80.0,
          ),
          Text(
            'Your selected items are:',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    widget.selectedItemList[index].itemName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    'Rs. ${widget.selectedItemList[index].price}',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.fastfood_rounded,
                    color: Colors.green,
                    size: 40.0,
                  ),
                );
              },
              itemCount: widget.selectedItemList.length,
            ),
          ),
          Text(
            'Your total is $totalAmt',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
