import 'item.dart';

class ItemData {
  List<Item> items = [
    Item(itemName: 'Poha', price: '30.00'),
    Item(itemName: 'Idli', price: '40.00'),
    Item(itemName: 'Aloo Paratha', price: '90.00'),
    Item(itemName: 'Misal Pav', price: '70.00'),
    Item(itemName: 'Pav Bhaji', price: '70.00'),
    Item(itemName: 'Upma', price: '20.00'),
    Item(itemName: 'Cornetto', price: '60.00'),
    Item(itemName: 'Dal Pakwan', price: '120.00'),
    Item(itemName: 'Veg Manchurian', price: '150.00'),
    Item(itemName: 'Samosa', price: '20.00'),
    Item(itemName: 'Sweet Corn', price: '60.00'),
    Item(itemName: 'Pani Puri', price: '90.00'),
    Item(itemName: 'SPDP', price: '190.00'),
  ];

  void toggleAddText(Item item) {
    item.toggleAdd();
  }
}
