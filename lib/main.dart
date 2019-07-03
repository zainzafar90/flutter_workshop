import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';
import 'package:flutter_workshop/saved.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomWords(),
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
  final Set<WordPair> _saved = Set<WordPair>();

  buildListItem(WordPair wordPair) {
    final bool alreadySaved = _saved.contains(wordPair);

    return ListTile(
      title: Text(
        wordPair.asPascalCase,
      ),
      trailing: Icon(
        alreadySaved ? Icons.star : Icons.star_border,
        color: Colors.orange,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        actions: <Widget>[IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)],
      ),
      body: ListView.builder(
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
      ),
    );
  }

  _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        // Add 20 lines from here...
        builder: (BuildContext context) => SavedStartupNames(saved: _saved),
      ),
    );
  }
}
