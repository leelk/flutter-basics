import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';
import 'package:quotes/says.dart';

void main() {
  runApp(MaterialApp(
    home: Qutes(),
  ));
}

class Qutes extends StatefulWidget {
  const Qutes({Key? key}) : super(key: key);

  @override
  _QutesState createState() => _QutesState();
}

class _QutesState extends State<Qutes> {
  List<Says> quotes = [
    Says(text: "Lorem ipsum dolor ", author: "Leel KARU"),
    Says(text: "Praesent suscipit ", author: "Martin"),
    Says(text: "Aenean semper.", author: "ST. Santha")
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children:
            quotes.map((say) =>  QuoteCard(
                says: say,
                 delete: (){
                  setState(() {
                    quotes.remove(say);
                  });
                 }
            )).toList(),
      ),
    );
  }


}

