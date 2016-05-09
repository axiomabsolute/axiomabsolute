---
date: '2016-05-09'
title: New Syntax Highlighting
truncate: 80
slug: 2016/05/09/pygments-highlight
---

I'm a programmer.  Most, if not all, of my posts contain snippets of code.  Most programmers prefer to read code with some form of syntax-based highlighting, myself included, making it an essential feature of any blogging platform.

Until recently, I was using a client-based syntax highlighting solution, from [prism.js](http://prismjs.com/).  It worked well, was fantastically customizable, and supported a wide range of languages, but added significantly to the weight of each page.  I've now switched over to using Hugo's built-in support for the Python library, Pygments, for syntax highlighting.

Hugo allows code blocks to be annotated either with the GitHub Flavored Markdown "code fences", like

<pre>
    ```python
    pass
    ```
</pre>

or by using shortcodes

<pre>
    {{&lt; highlight python "linenos=inline" >}}
    pass
    {{&lt; / highlight >}}
</pre>


Which produce the following blocks of code, respectively

#### Fences
```python
from pygments import highlight
from pygments.lexers import PythonLexer
from pygments.formatters import HtmlFormatter

code = 'print "Hello World"'
print highlight(code, PythonLexer(), HtmlFormatter())
```

#### Shortcode
{{< highlight python "linenos=inline" >}}
from pygments import highlight
from pygments.lexers import PythonLexer
from pygments.formatters import HtmlFormatter

code = 'print "Hello World"'
print highlight(code, PythonLexer(), HtmlFormatter())
{{< / highlight >}}

The shortcode syntax is slightly more flexible, allowing command line parameters to be specified for each block.  In the current version of Hugo, `v0.15`, relatively few Pygments options are supported.  The `master` branch has much more complete support.  Fence-based blocks rely on global configuration in the Hugo config file.  The `master` branch currently allows users to specify an arbitrary string to pass to the Pygments command line from the global Hugo config.

One of the main reasons I switched from Jekyll to Hugo was the ease of setup and use.  I wish Hugo included syntax highlighting natively, to avoid the additional dependency on Python, but I've found the Anaconda distribution of Python for Windows to require no additional effort to maintain, avoiding issues I've had with compiling C/C++ dependencies for Python packages on Windows (including Pygments) in the past.