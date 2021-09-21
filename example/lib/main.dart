// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(new MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: const Text('Show Short Toast'),
                    onPressed: () => showToast("Show Short Toast")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: const Text('Show Long Toast'),
                    onPressed: () => showToast("Show Long Toast", duration: Toast.lengthLong)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: const Text('Show Bottom Toast'),
                    onPressed: () => showToast("Show Bottom Toast", gravity: Toast.bottom)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: const Text('Show Center Toast'),
                    onPressed: () => showToast("Show Center Toast", gravity: Toast.center)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: const Text('Show Top Toast'),
                    onPressed: () => showToast(
                        """所爱隔山海，山海皆可平。可是你不爱我啊，隔了座火焰山还拿不到芭蕉扇。我奋不顾身穿山越岭到了你身旁，你也只会来一句“卧槽你好666啊”""",
                        gravity: Toast.top)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
