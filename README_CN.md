## [README of English](README.md)

富文本是很多App都需要的，而且Flutter也提供了富文本功能，但是对于做多语言的APP来说，RichText并不好用，或者说不能用。

[rich_text_widget](https://github.com/liranhao/rich_text_widget)使用起来简单又方便，不用分割字符串

#### 示例
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
展示效果如下

![Simulator Screen Shot - iPhone 11 Pro - 2020-08-10 at 10.52.06.png](https://upload-images.jianshu.io/upload_images/1350306-2b5cdcf7b2864f8f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/310)


## 参数说明
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

