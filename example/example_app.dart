import 'package:flutter/material.dart';
import 'package:nekos/nekos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'nekos.dart example';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Future<String> img = Nekos().neko();
  Future<String> why = Nekos().why();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: Theme.of(context).textTheme.headline2!,
            textAlign: TextAlign.center,
            child: FutureBuilder<String>(
              future: img, // a previously-obtained Future<String> or null
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                List<Widget> children;
                children = <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image(
                        image: NetworkImage('${snapshot.data}', scale: 2)),
                  ),
                  ElevatedButton(
                      onPressed: () => setState(() {
                            img = Nekos().gecg();
                          }),
                      child: const Text('next')),
                ];
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children,
                  ),
                );
              },
            ),
          ),
          DefaultTextStyle(
            style: Theme.of(context).textTheme.headline2!,
            textAlign: TextAlign.center,
            child: FutureBuilder<String>(
              future: why, // a previously-obtained Future<String> or null
              builder: (BuildContext context, AsyncSnapshot<String> snap) {
                List<Widget> children;
                children = <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('${snap.data}'),
                  ),
                  ElevatedButton(
                      onPressed: () => setState(() {
                            why = Nekos().why();
                          }),
                      child: const Text('new question')),
                ];
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
