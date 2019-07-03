import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedStartupNames extends StatefulWidget {
  final Set<WordPair> saved;

  const SavedStartupNames({Key key, this.saved}) : super(key: key);

  @override
  _SavedStartupNamesState createState() => _SavedStartupNamesState();
}

class _SavedStartupNamesState extends State<SavedStartupNames> {
  @override
  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = widget.saved.map(
      (WordPair pair) {
        return ListTile(
          title: Text(pair.asPascalCase),
        );
      },
    );

    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      // Add 6 lines from here...
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}
