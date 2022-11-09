import 'package:flutter/material.dart';

class NextPage extends StatefulWidget{
  const NextPage({super.key, required this.title});

  final String title;

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  void _backPage(){
    Navigator.pop(context);
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
            TextButton(onPressed: _backPage,
                child:
                const Text("Main Page"))
          ],
        ),
      ),
    );
  }

}