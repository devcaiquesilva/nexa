class ProdutoModel {
  final double id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final List<String> images;
  final String barcode;
  final String warrantyInformation;

  ProdutoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,

    required this.images,
    required this.barcode,
    required this.warrantyInformation,
    required this.rating,
  });

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      id: map['id'] * 1.0,
      title: map['title'],
      description: map['description'],
      price: map['price'] * 1.0,
      rating: map['rating'] * 1.0,
      images: List<String>.from(map['images'] as List),
      barcode: map['barcode'] == null ? '' : map['barcde'],
      warrantyInformation: map['warrantyInformation'],
    );
  }
}
