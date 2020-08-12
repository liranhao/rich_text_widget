import 'package:flutter/material.dart';
import 'package:rich_text_widget/rich_text_widget.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichTextWidget(
                // default Text
                Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(color: Colors.black),
                ),
                // rich text list
                richTexts: [
                  BaseRichText(
                    "pushed",
                    style: TextStyle(color: Colors.yellow),
                    onTap: () => {print("touch pushed")},
                  ),
                  BaseRichText(
                    "button",
                    style: TextStyle(color: Colors.red),
                    // onTap: () => {print("touch button")},
                  ),
                ],
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
