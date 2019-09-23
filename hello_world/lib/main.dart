import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

class CounterIncrement extends StatelessWidget {
  CounterIncrement({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class CounterLess extends StatelessWidget {
  CounterLess({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Less'),
    );
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _less() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new CounterIncrement(onPressed: _increment),
        new CounterLess(onPressed: _less),
        new CounterDisplay(count: _counter,)
      ],
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
        leading: new IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Show Snackbar',
          onPressed: () {},
        ),
        actions: <Widget>[
          new IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ],
      ),
      body: new GestureDetector(
        onTap: () {
          print('MyButton was tapped!');
        },
        child: new Row(
          children: <Widget>[
            new Counter(),
            new Center(
              child: new Container(
                height: 60,
                padding: const EdgeInsets.all(1.0),
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(4.0),
                  color: Colors.lightBlue[400],
                ),
                child: new Center(
                  child: new Text('hi💗',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          print('add click');
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(title: 'hello hi', home: new Home()));
}
