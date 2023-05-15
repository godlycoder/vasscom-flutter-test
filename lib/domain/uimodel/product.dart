class ProductUiModel {
  final double rating;
  final String imageUrl;
  final String name;
  final int price;
  final bool isReadyStock;

  ProductUiModel(
    this.rating,
    this.imageUrl,
    this.name,
    this.price,
    {this.isReadyStock = false}
  );
}