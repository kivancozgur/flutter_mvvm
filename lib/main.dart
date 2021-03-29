import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'views/authenticate/test/view/test_view.dart';
import 'views/authenticate/test/viewmodel/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestView(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Counter testViewModel = Counter();
  @override
  Widget build(BuildContext context) {
    return scaffoldBody;
  }

  Widget get scaffoldBody => Scaffold(floatingActionButton: floatingActionButtonIncrement, body: textNumber);

  FloatingActionButton get floatingActionButtonIncrement {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => testViewModel.increment(),
    );
  }

  Widget get textNumber {
    return Observer(
      builder: (_) => Center(
        child: Text(
          testViewModel.count.toString(),
        ),
      ),
    );
  }
}
