# rich_text_widget

A new Flutter package project.

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

使用说明
```
RichTextWidget(
  //default Text
  Text(
    "You already have an account. Log in",
    style: TextStyle(
      fontSize: 12,
      color: Color(0xff535353),
    ),
  ),
  // richText List
  richTexts: [
    BaseRichText(
      "Log in",
      style: TextStyle(color: Color(0xffCA353A)),
      onTap: () { // richText 点击事件
        Navigator.pop(context);
      },
    )
  ],
)

```
![avatar](https://upload-images.jianshu.io/upload_images/1350306-c734663f62e1cd49.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

参数说明
 #### RichTextWidget：

| Name        | type              |
| ----------- | ----------------- |
| defaultText | Text              |
| richTexts   | List (BaseRichText)|

#### BaseRichText: 

| Name    | type      |
| ------- | --------- |
| data    | String    |
| style   | TextStyle |
| onTap   | Function  |
