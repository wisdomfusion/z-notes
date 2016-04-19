# Markdown 语法参考

## 标准Markdown

### 加粗和强调

```
*emphasize* **strong**
_emphasize_ __strong__
~~Strikethrough~~
```
*emphasize* **emphasize**

_emphasize_ __strong__

~~Strikethrough~~

### 链接和Email

```
An example link to [Google](https://wwww.google.com/ "link title attr").
```

An example link to [Google](https://wwww.google.com/ "link title attr").

```
An [example][id]. Then, anywhere else in the doc, define the link:
    [id]: http://example.com/  "Title"
```

An [example][id]. Then, anywhere else in the doc, define the link:

[id]: http://example.com/  "Title"

Email:

```
An email <example@example.com> link.
```

An email <example@example.com> link.

### 图片

Inline (titles are optional):

```
![alt text](/path/img.jpg "Title")
```

Reference-style:

```
![alt text][id]
    [id]: /url/to/img.jpg "Title"
```

### 标题

Setext-style:

```
Header 1
========
```

```
Header 2
--------
```

atx-style (closing #’s are optional):

```
# Header 1 #
## Header 2 ##
###### Header 6
```

### 列表

Ordered, without paragraphs:

```
1. Foo
2. Bar
```

1. Foo
2. Bar


Unordered, with paragraphs:

```
* A list item.
  With multiple paragraphs.
* Bar
```

* A list item.

  With multiple paragraphs.
  
* Bar

You can nest them:

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
`<code>` spans are delimited
by backticks.
You can include literal backticks
like `` `this` ``.
```

`<code>` spans are delimited
by backticks.

You can include literal backticks
like `` `this` ``.

#### 代码块


Indent every line of a code block by at least 4 spaces or 1 tab.

    This is a normal paragraph.

        This is a preformatted
        code block.

### 换行


### 水平线

Three or more dashes or asterisks:

```
---
* * *
- - - - 
```

## 其他语法

### 脚注

```
That's some text with a footnote.[^1]

    [^1]: And that's the footnote.
```

### 表格

A simple table looks like this:

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

If you wish, you can add a leading and tailing pipe to each line of the table:

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

Specify alignement for each column by adding colons to separator lines:

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

You can also add an anchor for an element such as Headers, then you can link to this anchor anywhere, when you click that link in the Preview view, it'll auto scroll to the place of the destination anchor.

For example below is a normal h2 Header:

```
## This is an example
```

Now we add an anchor for it, here we use the name "anchor1" for the anchor, of course you can use any name you want.

```
## [This is an example](id:anchor1)
```

If you want to link to this anchor, simply write like this:

```
Click this [link](#anchor1) in the Preview view will auto scroll to the place of the destination anchor.
```



