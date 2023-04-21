import 'package:flutter/material.dart';
import '../models/model_item.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),

      body: Container(
        child: ListView(
          children: [
            Image.network(item.imgUrl),
            Padding(padding: EdgeInsets.all(8)),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(10),
              child: Text(
                item.title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item.price.toStringAsFixed(0).replaceAllMapped(
                          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                              (match) => '${match.group(1)},',
                        )}원',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                      Text(
                        '브랜드 : '+ item.brand,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),

                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: Text(item.description, style:TextStyle(fontSize: 16), ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press here
                },
                child: Text('Add to Cart'),
            ),

            ),
          ],
        ),
      ),
    );

  }

}