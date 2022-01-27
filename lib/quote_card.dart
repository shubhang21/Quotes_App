import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() quoteDelete;

  QuoteCard({required this.quote, required this.quoteDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton.icon(
                icon: Icon(Icons.delete),
                label: Text('delete quote'),
                onPressed: quoteDelete),
          ],
        ),
      ),
    );
  }
}
