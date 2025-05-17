# typ2zhihu.lua
## 介绍
截至3.6版本，Pandoc对于从Typst到Markdown的转化有双重公式的问题。

与此同时，知乎对于Markdown中数学公式的格式识别和常见的不一样，通常情况是单个$包裹行内公式，$$包裹行间公式，采用$$包裹行内公式，行间公式则是在以$$...\\$$形式包裹

typ2zhihu.lua可以解决如上两个问题，帮助把`.typ`文件转化为知乎可以识别的markdown文件。
## 使用
确保你安装了pandoc，然后下载typ2zhihu.lua到你要转化的typ文件夹下。
```bash
pandoc example.typ -o example.md --lua-filter=typ2zhihu.lua
```
此时example.md可以直接导入知乎发布，并且数学公式正常识别。
