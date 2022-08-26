import 'package:flutter/material.dart';

class WithOutProvider extends StatefulWidget {
  const WithOutProvider({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WithOutProvider> createState() => _WithOutProviderState();
}

class _WithOutProviderState extends State<WithOutProvider> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("WithoutProvider");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 25),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
