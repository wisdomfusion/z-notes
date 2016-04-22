# Markdown 语法参考

## 1. 标准Markdown

### 1.1 加粗和强调

```
*emphasize* **strong**
_emphasize_ __strong__
```
*emphasize* **emphasize**

_emphasize_ __strong__

### 1.2 链接和Email

```
链接到 [Github](https://github.com/ "Github").
```

链接到 [Github](https://github.com/ "Github").

```
定义链接的ID后 [example][id]，可以在文档下方再定义链接的目标地址：
```

    [id]: http://example.com/  "Title"

定义链接的ID后 [example][id]，可以在文档下方再定义链接的目标地址：

[id]: http://example.com/  "Title"

电子邮件链接：

```
电子邮件链接实例 <example@example.com>
```

电子邮件链接实例 <example@example.com>

### 1.3 图片

```
![图片替换文本（禁止显示图片时会显示此文本）](/path/img.jpg "图片标题（鼠标放到图片上时会显示此文本）")
```

图片也可以先插入到正文，之后再根据 id 定义图片的路径和显示文本：


```
![图片替换文本（禁止显示图片时会显示此文本）][id]
```

    [id]: /url/to/img.jpg "图片标题（鼠标放到图片上时会显示此文本）"


### 1.4 标题


```
Header 1
========
```

```
Header 2
--------
```

或

```
# Header 1 #
## Header 2 ##
###### Header 6
```

### 1.5 列表

有序列表 ol ：

```
1. Foo
2. Bar
```

1. Foo
2. Bar


无序列表 ul，列表项中带有多行文字：

```
* A list item.
  With multiple paragraphs.
* Bar
```

* A list item.

  With multiple paragraphs.
  
* Bar

有序列表和无序列表可以混合嵌套：

```
* Abacus
  * answer
* Bubbles
  1. bunk
  2. bupkis
     * BELITTLER
  3. burper
* Cunning
```

* Abacus
  * answer
* Bubbles
  1. bunk
  2. bupkis
     * BELITTLER
     * BELITTLER2
  3. burper
* Cunning

### 1.6 引用

```
> Email-style angle brackets
> are used for blockquotes.
> > And, they can be nested.
> #### Headers in blockquotes
> 
> * You can quote a list.
> * Etc.
```

> Email-style angle brackets
> are used for blockquotes.
> > And, they can be nested.
> 
> #### Headers in blockquotes
> 
> * You can quote a list.
> * Etc.

### 1.7 代码

#### 1.7.1 行内代码

```
行内代码 `<code>`，也可以放在反引号之间：`` code ``。
```

行内代码 `<code>`，也可以放在两对反引号之间：`` code ``。

#### 1.7.2 代码块

代码块每行前添加 缩进 4个空格 或 1个制表符：

    #!/usr/bin/perl
    use strict;
    use warnings;

    # first, create your message
    use Email::MIME;
    my $message = Email::MIME->create(
      header_str => [
        From    => 'you@example.com',
        To      => 'friend@example.com',
        Subject => 'Happy birthday!',
      ],
      attributes => {
        encoding => 'quoted-printable',
        charset  => 'ISO-8859-1',
      },
      body_str => "Happy birthday to you!\n",
    );
    
    # send the message
    use Email::Sender::Simple qw(sendmail);
    sendmail($message);

### 1.8 换行
插入一个空白行即可

### 1.9 水平线

3个以上短线或*号：

```
---
* * *
- - - - 
```

---

## 2. 其他语法

### 2.1 脚注

```
这些文字带有脚注[^1]
```
    [^1]: 我是脚注。

### 2.2 表格

简单表格：

```
First Header | Second Header | Third Header
------------ | ------------- | ------------
Content Cell | Content Cell  | Content Cell
Content Cell | Content Cell  | Content Cell
```

First Header | Second Header | Third Header
------------ | ------------- | ------------
Content Cell | Content Cell  | Content Cell
Content Cell | Content Cell  | Content Cell

也可以在行首和行尾加上 | ，效果一样：

```
| First Header | Second Header | Third Header |
| ------------ | ------------- | ------------ |
| Content Cell | Content Cell  | Content Cell |
| Content Cell | Content Cell  | Content Cell |
```

| First Header | Second Header | Third Header |
| ------------ | ------------- | ------------ |
| Content Cell | Content Cell  | Content Cell |
| Content Cell | Content Cell  | Content Cell |

使用英文冒号可以给列设定对齐方式：

```
First Header | Second Header | Third Header
:----------- | :-----------: | -----------:
Left         | Center        | Right
Left         | Center        | Right
```

First Header | Second Header | Third Header
:----------- | :-----------: | -----------:
Left         | Center        | Right
Left         | Center        | Right

### 2.3 锚点

Markdown 中也可以给使用锚链接，下面这是一个普通的 H2 标题：

```
## H2 标题实例
```

加个 id 属性就可以给标题加上锚点：

```
## [带锚点的 H2 实例](id:anchor1)
```

链接到上面的锚点，我们只需要如下的语法即可：

```
预览时点击 [锚链接](#anchor1)
```

### 2.4 删除线

```
~~Strikethrough~~
```

~~Strikethrough 实例~~

