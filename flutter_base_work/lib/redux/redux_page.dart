import 'package:flutter/material.dart';
import 'package:flutter_base_work/redux/count_state.dart';
import 'package:flutter_base_work/redux/reducer.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_base_work/redux/action_test.dart';

final store = Store<CountState>(reducer, initialState: CountState.initState());

void main() => runApp(MyApp(store));


class MyApp extends StatelessWidget {

  final Store<CountState> store;
  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: '首页'),
        routes: {
          "home": (context) => MyHomePage(),
          "secondPage": (context) => MySecondPage(),
        },
      ),
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

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, int>(
        converter: (store) => store.state.count,
        builder: (context, count) {
          return Scaffold(
            appBar: AppBar(
              title: Text("首页"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    count.toString(),
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                Navigator.pushNamed(context, "secondPage");
              },
              tooltip: 'Increment',
              child: Icon(Icons.send),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        }
    );
  }
}

class MySecondPage extends StatefulWidget {
  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, VoidCallback>(
        converter: (store) {
          return () => store.dispatch(Action_test.increment);
        },
        builder: (context, callback) {
          return Scaffold(
            appBar: AppBar(
              title: Text("第二"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "你好",
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: callback,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        }
    );
  }
}
