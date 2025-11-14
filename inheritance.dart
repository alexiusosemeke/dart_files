// Here we will create a class called Product

class Product {
  String product;
  double price;
  int discount;

  Product(this.product, this.price, this.discount);

  void getDiscount() {
    print("Product price is $price, and discount is $discount");
  }
}

class Electronics extends Product {
  Electronics(String product, double price, int discount)
    : super(product, price, discount);
  @override
  void getDiscount() =>
      print('Product Price is $price, and your discount is $discount %');
}

class Groceries extends Product {
  Groceries(String product, double price, int discount)
    : super(product, price, discount);
  @override
  void getDiscount() => print("Your discount is $discount %");
}

class Clothes extends Product {
  Clothes(String product, double price, int discount)
    : super(product, price, discount);
  @override
  void getDiscount() => print('Your discount is $discount %');
}

void main() {
  Product myElectronics = Electronics("Electric Stove", 500.99, 15);

  Product myGroceries = Groceries("Indomie instant noodles", 100.99, 5);

  Product myClothes = Clothes("Louis Vuitton Single", 1000.99, 10);

  myElectronics.getDiscount();

  myGroceries.getDiscount();

  myClothes.getDiscount();
}

// static keyword

// display product price and discounted price
