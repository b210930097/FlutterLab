class Product {
  final String product_name;
  final double price;

  Product(this.product_name, this.price);

  @override
  String toString() {
    return '$product_name: $price';
  }
}

class ShoppingCart {
  List<Product> items = [];

  void addProduct(Product product) {
    items.add(product);
  }

  double calculateTotal() {
    double total = 0;
    for (Product p in items) {
      total += p.price;
    }
    return total;
  }

  void checkout() {
    for (Product p in items) {
      // ignore: avoid_print
      print('${p.product_name}:${p.price}₮');
    }
    // ignore: avoid_print
    print('total = ${calculateTotal()}');
  }
}

// class Customer {
//   final String name;
//   final ShoppingCart shoppingCart;

//   void addToCart(Product product);
// }

main() {
  final test = Product('aa', 12);
  final test1 = Product('bb', 12);

  final aa = ShoppingCart();
  aa.addProduct(test);
  aa.addProduct(test1);
  aa.checkout();
}
