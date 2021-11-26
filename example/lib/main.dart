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
          child: Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: RichTextWidget(
                    // default Text
                    Text(
                      'I agree to the aaaaaaaaa 《Terms of Service》《Privacy Policy》',
                      style: TextStyle(color: Colors.black),
                    ),
                    // rich text list
                    maxLines: 2,
                    richTexts: [
                      BaseRichText(
                        "《Terms of Service》",
                        style: TextStyle(color: Colors.yellow),
                        onTap: () => {print("touch pushed")},
                      ),
                      BaseRichText(
                        "《Privacy Policy》",
                        style: TextStyle(color: Colors.red),
                        onTap: () => {print("touch button")},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
