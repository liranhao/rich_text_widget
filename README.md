## [README of Chinese](README_CN.md)
Rich text is required by many apps, and Flutter also provides rich text functions, but for multilingual apps, RichText is not easy to use, or 
can’t be used.

[rich_text_widget](https://github.com/liranhao/rich_text_widget) is simple and convenient to use, no need to split the string


#### The specific usage method is as follows:
```
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
          onTap: () => {print("touch button")},
        ),
      ],
    )
```
Demo display effect

![Simulator Screen Shot - iPhone 11 Pro - 2020-08-10 at 10.52.06.png](https://upload-images.jianshu.io/upload_images/1350306-2b5cdcf7b2864f8f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/310)


## Props :
 #### RichTextWidget：
| Name          | type                  |
| ------------- | --------------------- |
| defaultText   | Text                  |
| richTexts     | List \<BaseRichText>  |
| caseSensitive | bool (defalut = true) |


#### BaseRichText: 
| Name    | type      |
| ------- | --------- |
| data    | String    |
| style   | TextStyle |
| onTap   | Function  |
