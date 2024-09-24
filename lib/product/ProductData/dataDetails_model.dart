// dataDetails_model.dart

class Product {
  final String name;
  final double newPrice;
  final String imageUrl;
  final String description; // تفاصيل إضافية


  Product({
    required this.name,
    required this.newPrice,
    required this.imageUrl,
    required this.description,

  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'newPrice': newPrice,
      'imageUrl': imageUrl,
      'description': description,

    };
  }
}
