import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Listsep(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text('List' + counter.toString()));
                        counter++;
                      });
                    },
                    child: Text('Add')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text('minus')),
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

class Listbuilder extends StatefulWidget {
  const Listbuilder({Key? key}) : super(key: key);

  @override
  _ListbuilderState createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListVIew.builder()'),
      ),
      body: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.grey[300],
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}

class Listsep extends StatefulWidget {
  const Listsep({Key? key}) : super(key: key);

  @override
  _ListsepState createState() => _ListsepState();
}

class _ListsepState extends State<Listsep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListVIew.separated'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Listview'),
              leading: Icon(Icons.arrow_forward),
              trailing: Text('itemBuilder'),
            );
          },
          separatorBuilder: (context, index) {
            return ListTile(
              selectedTileColor: Colors.grey,
              leading: CircleAvatar(
                child: Text(
                  'M',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: Text('separatorBuilder'),
              tileColor: Colors.lightBlueAccent,
            );
          },
          itemCount: 10),
    );
  }
}
