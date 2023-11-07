class Item {
  final String itemName;
  final String price;
  String addText = 'Add';
  Item({
    required this.itemName,
    required this.price,
  });

  String toggleAdd() {
    if (addText == 'Add') {
      return addText = 'Added';
    } else {
      return addText = 'Add';
    }
  }
}
