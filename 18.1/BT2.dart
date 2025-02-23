class Product {
  Object id;
  Object name;
  Object price;
  Product({required this.id, required this.name, required this.price});
}

void main() {
  List<Product> bang_gia = [
    Product(id: '01', name: 'cà rốt', price: 10),
    Product(id: '02', name: 'quần đùi', price: 7),
    Product(id: '03', name: 'bông cải xanh', price: 15),
  ];
  for (var Product in bang_gia) {
    print('ID: ${Product.id}, Name: ${Product.name}, Price: ${Product.price} ');
  }
}
