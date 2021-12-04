import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title:"Start Up Wallet Title",
      home: RandomWords(),
      );
  }
}

class RandomWords extends StatefulWidget{
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}
class _RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context){
    // final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title:const Text("Start Up Wallet App"),
      ),
      body: _buildSuggessions()
    );
  }
    final _biggerFont = const TextStyle(fontSize: 18);
    final _suggessions = <WordPair>[];
  Widget _buildSuggessions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i){
        if(i.isOdd){
          return const Divider();
        }
          final index = i ~/ 2;
          if(i >= _suggessions.length){
            _suggessions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggessions[index]);
      }
    );
  }
  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}