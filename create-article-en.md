---
layout: page
title: Créer un article
subtitle: Voici comment créer un article sur ce blog.
ref: create-article
lang: fr
permalink: /create-article-en/
---

This website allows to post articles about data science and software engineering.
You can insert maths formula, code, video or image easily.

Each article is written in [MarkDown]. If one part of your article has an syntax too specific, you can write [HTML] instead, inside your MarkDown document.
The maths formulae use [LateX] syntax thanks to [MathJax]. And to insert image or video, use the `include` macro offered by [Jekyll].  

Your article has metadata and content, here an [example].

~~~
{% raw %}
---
layout: post
title:  "Example 1"
keywords: ["data-science", "big-data"]   <--- metadata
ref: example-1
lang: en
author: glegoux
---

Example 1 <--- content
{% endraw %}
~~~


[MarkDown]: https://guides.github.com/features/mastering-markdown/ "MarkDown"
[HTML]: https://en.wikipedia.org/wiki/HTML "HTML"
[LateX]: https://www.latex-project.org/ "LateX"
[MathJax]: https://www.mathjax.org/"MathJax"
[Jekyll]: https://jekyllrb.com/docs/home/ "Jekyll"
[example]: TODO "example"
[README.md]: TODO "README.md"

Follow this stages:

0) Clone this git repository and install the environment, see [README.md]. 
Read and understand this [example].

1) Write an article about a funny subject. Create a file in  `_drafts` folder and
  format this name like that: `<articlename>.md`.

2) To see your article, run jekyll server with `make draft` in the working directory.
Open your navigator at `http://127.0.0.1:4000/` and look at `posts tab`.

3) One time your article is finished, rename it like that `YEAR-MONTH-DAY-<articlename>.md` and move it
 to `_posts` folder. Run jekyll server with `make run`. 

4) You can see your article at URL precised in its metadata. Now you can push your article.   


   
### Insert maths formula
--------------------

> code:

<pre>
This formula $ \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} e^{-\frac{x^2}{2}} = 1 $ is on the same line than the text.

This formula has its own line:

$$ x^4 + x^3 + x^2 + x = 1 $$
</pre>

> rendering:

This formula $ \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} e^{-\frac{x^2}{2}} = 1 $ is on the same line than the text.

This formula has its own line:

$$ x^4 + x^3 + x^2 + x = 1 $$

### Insert videos
--------------------

> code:

<pre>
{% raw %}
{% include youtube.html id="4xXqvLEA2k4" description="Programming Contest"  %}
{% endraw %}
</pre>

> rendering:

{% include youtube.html id="4xXqvLEA2k4" description="Programming Contest"  %}

### Insert Images
--------------------

> code:

<pre>
{% raw %} 
{% include img.html url="/static/img/algorithm-words.jpg" width="50%" description="Algorithm" %}
{% endraw %}
</pre>

> rendering:

{% include img.html url="/static/img/algorithm-words.jpg" width="50%" description="Algorithm" %}
### Insert code
--------------------

<br>  

##### Python
--------------------

> code:

<pre>
~~~  python
#/usr/bin/env python

if __name__ == '__main__':
    print("Hello")
~~~
</pre>

> rendering:

~~~  python
#/usr/bin/env python

if __name__ == '__main__':
    print("Hello")
~~~

<br>  

##### Java
--------------------

> code:

<pre>
~~~  java
public class Main {
	public static void main(String[] args) {
		System.out.println("Hello");
	}
}
~~~
</pre>

> rendering:

~~~  java
public class Main {
    public static void main(String[] args) {
		System.out.println("Hello");
	}
}
~~~

<br>  

##### Scala
--------------------

> code:

<pre>
~~~  scala
object HelloWorld {
  def main(args: Array[String]): Unit = {
    println("Hello, world!")
  }
}
~~~
</pre>

> rendering:

~~~  scala
object HelloWorld {
  def main(args: Array[String]): Unit = {
    println("Hello, world!")
  }
}
~~~

<br>  

##### Javascript
--------------------

> code:

<pre>
~~~  javascript
function hello() {
    console.log('hello');
}
hello();
~~~
</pre>

> rendering:

~~~  javascript
function hello() {
    console.log('hello');
}
hello();
~~~

<br>  

##### Bash
--------------------

> code:

<pre>
~~~  bash
#/usr/bin/env bash

echo "Hello"
~~~
</pre>

> rendering:

~~~  bash
#/usr/bin/env bash

echo "Hello"
~~~

<br>  

##### SQL
--------------------

> code:

<pre>
~~~  sql
SELECT key, value
FROM maps
WHERE value = 'value'
ORDER BY key;
~~~
</pre>

> rendering:

~~~  sql
SELECT key, value
FROM maps
WHERE value = 'value'
ORDER BY key;
~~~

<br>  

##### JSON
--------------------

> code:

<pre>
~~~  json
{
    "menu": {
        "id": "file",
        "value": "File",
        "popup": {
            "menuitem": [
                { "value": "New", "onclick": "CreateNewDoc()" },
                { "value": "Open", "onclick": "OpenDoc()" },
                { "value": "Close", "onclick": "CloseDoc()" }
            ]
        }
    }
}
~~~
</pre>

> rendering:

~~~  json
{
    "menu": {
        "id": "file",
        "value": "File",
        "popup": {
            "menuitem": [
                { "value": "New", "onclick": "CreateNewDoc()" },
                { "value": "Open", "onclick": "OpenDoc()" },
                { "value": "Close", "onclick": "CloseDoc()" }
            ]
        }
    }
}
~~~