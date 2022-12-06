import 'package:begginer_tutorial_app/next_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _text = '';

  void _detectChangeText(String inputText) {
    setState(() {
      _text = inputText;
    });
  }

  void _goNextPage(){
    print("test print");
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => NextPage(title: "Result Page", inputText: _text,))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(50.0),
              child: new TextField(
                enabled: true,
                maxLength: 100,
                maxLines: 2,
                decoration: const InputDecoration(
                  hintText: '表示したい文字列を入力してください \n (２行目まで表示されます)',
                  labelText: '文字列',
                ),
                onChanged: _detectChangeText,
              ),
            ),
            TextButton(onPressed: _goNextPage,
                child:
                const Text("Next Page"))
          ],
        ),
      ),
    );
  }
}
