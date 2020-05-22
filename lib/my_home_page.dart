import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// Translasi biasa.
        title: Text('title'.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// Translasi menggunakan argumen.
            Text('message'.tr(args: ['Flutter', 'Dart'])),
            Text('message2'.tr(
              namedArgs: {
                'lang': 'Javascript',
                'framework': 'React',
              },
            )),

            /// Translasi nomor. Supaya translasi lebih benar.
            Text(
              'clicked'.plural(_counter),
            ),

            /// Cuman menampilkan nomor.
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            /// Translasi yang beranak.
            Text('profile.reset_password.label'.tr()),

            /// Tombol untuk mengubah bahasa.
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                OutlineButton(
                  child: Text('Arabic'),
                  onPressed: () {
                    context.locale = Locale('ar', 'SA');
                  },
                ),
                OutlineButton(
                  child: Text('English'),
                  onPressed: () {
                    context.locale = Locale('en', 'US');
                  },
                ),
                OutlineButton(
                  child: Text('Indonesia'),
                  onPressed: () {
                    context.locale = Locale('id', 'ID');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
