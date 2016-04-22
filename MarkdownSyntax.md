# Markdown 语法参考

## 标准Markdown

### 加粗和强调

```
*emphasize* **strong**
_emphasize_ __strong__
```
*emphasize* **emphasize**

_emphasize_ __strong__

### 链接和Email

```
链接到 [Github](https://github.com/ "Github").
```

链接到 [Github](https://github.com/ "Github").

```
定义链接的ID后 [example][id]，可以在文档下方再定义链接的目标地址：
    [id]: http://example.com/  "Title"
```

定义链接的ID后 [example][id]，可以在文档下方再定义链接的目标地址：

[id]: http://example.com/  "Title"

电子邮件链接：

```
电子邮件链接实例 <example@example.com>
```

电子邮件链接实例 <example@example.com>

### 图片

```
![alt text](/path/img.jpg "Title")
```

或


```
![alt text][id]
    [id]: /url/to/img.jpg "Title"
```

### 标题


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

### 列表

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
  3. burper
* Cunning

### 引用

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

### 代码

#### 行内代码

```
行内代码 `<code>`，也可以放在反引号之间：`` code ``。
```

行内代码 `<code>`，也可以放在两对反引号之间：`` code ``。

#### 代码块

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

### 换行
两个换行符即可

### 水平线

3个以上短线或*号：

```
---
* * *
- - - - 
```

## 其他语法

### 脚注

```
这些文字带有脚注[^1]

    [^1]: 我是脚注。
```

### 表格

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

### 锚点

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

### 删除线

```
~~Strikethrough~~
```

~~Strikethrough 实例~~

