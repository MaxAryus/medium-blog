import 'package:flutter/material.dart';
import 'my_custom_button.dart';

class ParentWidget extends StatefulWidget {
  ParentWidget({Key? key}) : super(key: key);

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Widget'),
      ),
      body: Center(
          child: Column(children: [
        MyCustomButton(
          text: 'Click me',
          onPressed: () => print('Button clicked'),
        ),
        SizedBox(height: 20),
        MyCustomButton(
          text: 'I will call a function',
          onPressed: () => myFunction(),
        ),
      ])),
    );
  }

  void myFunction() {
    print('I am a function');
  }
}
