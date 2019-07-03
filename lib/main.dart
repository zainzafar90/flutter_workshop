import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('List View')),
        body: RandomWords(),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final wordPair = WordPair.random();
  final List<WordPair> _suggestions = <WordPair>[];

  buildListItem(WordPair wordPair) {
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return Divider();
        }

        final int index = i ~/ 2;
        print(index);
        if (index >= _suggestions.length) {
          // ...then generate 10 more and add them to the
          // suggestions list.
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return buildListItem(_suggestions[index]);
      },
    );
  }
}
