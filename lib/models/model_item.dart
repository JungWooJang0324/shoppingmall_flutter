//models/model_item.dart

import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  late String id;
  late String title;
  late String brand;
  late String description;
  late String imgUrl;
  late String registerDate;
  late int price;


  Item({
    required this.id,
    required this.title,
    required this.brand,
    required this.description,
    required this.imgUrl,
    required this.price,
    required this.registerDate,
  });

  Item.fromSnapshot(DocumentSnapshot snapshot){
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    id = snapshot.id;
    title = data['title'];
    brand = data['brand'];
    description = data['description'];
    imgUrl = data['imgUrl'];
    price = data['price'];
    registerDate = data['registerDate'];


  }

}