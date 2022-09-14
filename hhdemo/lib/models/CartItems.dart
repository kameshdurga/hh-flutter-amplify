class CartItems {
  CartItems(
    this.items,
    this.subTotal,
    this.serviceFee,
    this.total,
  );
  final List<Cart> items;
  double subTotal;
  double serviceFee;
  double total;
}

class Cart {
  Cart(this.quantity, this.name, this.price);
  int quantity;
  String name;
  double price;
}
