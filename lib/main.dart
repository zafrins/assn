import 'package:flutter/material.dart';
import 'bookCard.dart';
import 'bookDetails.dart';
import 'book.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookListPage(),
    );
  }
}

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Book> books = [
      Book(name: 'To Kill A Mockingbird', author: 'Harper Lee', rating: 4.5, imageUrl: 'images/img1.png'),
      Book(name: 'The Great Gatsby', author: 'F. Scott Fitzgerald', rating: 4.8, imageUrl: 'images/img2.png'),
      Book(name: 'The Little Prince', author: 'Antoine de Saint-Exupéry', rating: 4.3, imageUrl: 'images/img3.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
        backgroundColor: Colors.teal[400],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}
