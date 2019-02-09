import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final Set<WordPair> _selectedWords;

  SecondScreen(this._selectedWords);

  @override
  Widget build(BuildContext context) {
    return new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(
            home: new Scaffold(
                appBar: new AppBar(
                  title: new Text('Loved  Words'),
                ),
                body: new Center(child: setData()))));
  }

  setData() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _selectedWords.length,
        itemBuilder: (BuildContext _context, int i) {
          return _buildRow(_selectedWords.elementAt(i));
        });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: new TextStyle(
          color: Colors.blue,
          fontSize: 25.0,
        ),
      ),
      leading: new CircleAvatar(
        child: new Text(pair.asUpperCase.substring(0, 1)),
      ),
    );
  }
}
