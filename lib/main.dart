import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'),
    Quote(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'),
    Quote(
        text:
            "Your time is limited, so don't waste it living someone else 's life. Don't be trapped by dogma – which is living with the results of other people's thinking",
        author: 'Steve Jobs'),
    Quote(
        text: "Life is what happens when you're busy making other plans.",
        author: 'John Lennon'),
    Quote(
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'),
    Quote(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'),
    Quote(
        text:
            "Your time is limited, so don't waste it living someone else 's life. Don't be trapped by dogma – which is living with the results of other people's thinking",
        author: 'Steve Jobs'),
    Quote(
        text: "Life is what happens when you're busy making other plans.",
        author: 'John Lennon'),
    Quote(
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'),
    Quote(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'),
    Quote(
        text:
            "Your time is limited, so don't waste it living someone else 's life. Don't be trapped by dogma – which is living with the results of other people's thinking",
        author: 'Steve Jobs'),
    Quote(
        text: "Life is what happens when you're busy making other plans.",
        author: 'John Lennon'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quotes.add(Quote(text: 'hi', author: 'h'));
          });
        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // children: [
          //   for (var i in quotes)
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text(i),
          //     )
          // ],7906214652
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  quoteDelete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
