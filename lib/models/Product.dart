import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final String price, size;
  final int id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Speaker HP",
      price: "Rp. 200.000",
      size: "12",
      description: dummyText,
      image: "assets/images/image4.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Speaker WIFI",
      price: "Rp. 230.000",
      size:" 8",
      description: dummyText,
      image: "assets/images/image_5.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Redmi Note 9",
      price: "Rp. 1,500.000",
      size: "10",
      description: dummyText,
      image: "assets/images/image6.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Redmi Note 10",
      price: "Rp. 2,000.000",
      size: '11',
      description: dummyText,
      image: "assets/images/image7.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Tas Carier Eiger",
      price: "Rp. 650.000",
      size: '12',
      description: dummyText,
      image: "assets/images/image14.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Tas Wanita ",
    price: "Rp. 240.000",
    size: "12",
    description: dummyText,
    image: "assets/images/image13.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
