import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_model.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    print("Provider");
    Provider.of<CounterProvider>(context, listen: false).incrementCounter();
  }

  void _decrementCounter(BuildContext context) {
    print("Provider");
    Provider.of<CounterProvider>(context, listen: false).decrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    var _counter = Provider.of<CounterProvider>(context).addCount;

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
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
                    onPressed: () => _incrementCounter(context),
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton(
                    onPressed: () => _decrementCounter(context),
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
