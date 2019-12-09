
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Detail extends StatelessWidget {


  final String text;

  const Detail({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    final wordPair2 = new WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text(wordPair2.toString()),
      ),
      body: Center(
        child: Text(wordPair.toString()),
      ),
    );
  }
}