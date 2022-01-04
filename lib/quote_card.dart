import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes/says.dart';

class QuoteCard extends StatelessWidget {
  final Says says;
  final Function delete;

  QuoteCard({ required this.says,  required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              says.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              says.author,
              style: TextStyle(fontSize: 10, color: Colors.amberAccent[950]),
            ),
            SizedBox(height: 10),
            IconButton(onPressed: () => delete(), icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
