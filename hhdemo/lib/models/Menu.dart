// ignore: file_names
class Menu {
  Menu({
    required this.item,
    required this.price,
    required this.imageKey,
  });
  final String item;
  final String price;
  final String imageKey;

  factory Menu.fromJson(Map<String, dynamic> data) {
    print("inside menu -----");

    // note the explicit cast to String
    // this is required if robust lint rules are enabled
    final item = data['item'] as String;
    final price = data['price'] as String;
    final imageKey = data['imageKey'] as String;
    return Menu(item: item, price: price, imageKey: imageKey);
  }
}
