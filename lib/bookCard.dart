import 'package:flutter/material.dart';
import 'book.dart';
import 'bookDetails.dart';

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Image.asset('${book.imageUrl}', width: 50),
        title: Text(book.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Author: ${book.author}'),
            Text('Rating: ${book.rating}'),
          ],
        ),
        trailing: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BuyNowPage(book: book)),
            );
          },
          icon: Icon(Icons.shopping_cart),
          label: Text('Buy Now'),
        ),
      ),
    );
  }
}
