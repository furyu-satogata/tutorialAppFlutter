import 'package:flutter/material.dart';

class NextPage extends StatefulWidget{
  const NextPage({super.key, required this.title, required this.inputText});

  final String title;
  final String inputText;

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  String _inputText = "";
  void _backPage(){
    Navigator.pop(context);
  }

  @override
  void initState(){
    super.initState();

    _inputText = widget.inputText;
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
              child:
                Text(_inputText),
            ),
            TextButton(onPressed: _backPage,
                child:
                const Text("Main Page"))
          ],
        ),
      ),
    );
  }

}