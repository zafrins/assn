import 'package:flutter/material.dart';
import 'book.dart';

class BuyNowPage extends StatelessWidget {
  final Book book;

  BuyNowPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Book Name: ${book.name}'),
            Image.asset('${book.imageUrl}', height: 200),

            Text('Author: ${book.author}'),
            Text('Price: \$10'),

            DropdownButton<String>(
              hint: Text("Select Payment Method"),
              items: <String>['Cash On Delivery', 'Bkash', 'Nogod'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown change
              },
            ),

            ElevatedButton (
              child: Text ("Purchase now"),
              onPressed: () {print ("Purchase");},
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
