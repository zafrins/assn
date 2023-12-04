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
            Text('Book Name: ${book.name}'), // Use 'name' property
            Image.asset('images/${book.imageUrl}.png', height: 100),
            Text('Author: ${book.author}'),
            Text('Short Description: Add your description here.'),
            Text('Price: \$10'),
            DropdownButton<String>(
              items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown change
              },
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
