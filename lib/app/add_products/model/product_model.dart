class ProductModel {
  String productname;
  String productdescription;
  List images;
  String productprice;
  String productoffer;
  String productcategory;
  String productcolor;
  String productbrand;
  String productsize;
  String productmaterial;
  ProductModel({
    required this.productname,
    required this.productdescription,
    required this.images,
    required this.productbrand,
    required this.productcategory,
    required this.productcolor,
    required this.productmaterial,
    required this.productoffer,
    required this.productprice,
    required this.productsize,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productname: json["product_name"],
        productdescription: json["product_description"],
        productprice: json["product_price"],
        productbrand: json["product_brand"],
        productcategory: json["product_category"],
        productcolor: json["product_color"],
        productmaterial: json["product_material"],
        productoffer: json["product_offer"],
        productsize: json["product_size"],
        images: json["images"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productname,
        "product_description": productdescription,
        "product_price": productprice,
        "product_brand": productbrand,
        "product_category": productcategory,
        "product_color": productcolor,
        "product_material": productmaterial,
        "product_offer": productoffer,
        "product_size": productsize,
        "images": images,
      };
}
