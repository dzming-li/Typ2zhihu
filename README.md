# typ2zhihu.lua
## 介绍
截至 3.6 版本，Pandoc对于从 Typst 到 Markdown 的转化有双重公式的问题。

与此同时，知乎对于 Markdown 中数学公式的格式识别和常见的不一样，通常情况是单个 $ 包裹行内公式，$$ 包裹行间公式。而知乎采用 $$ 包裹行内公式，行间公式则是在以`$$...\\$$`形式包裹

`typ2zhihu.lua`可以解决如上两个问题，帮助把`.typ`文件转化为知乎可以识别的markdown文件。
## 使用
确保你安装了Pandoc，然后下载`typ2zhihu.lua`到你要转化的`.typ`所在的文件夹下。
```bash
pandoc example.typ -o example.md --lua-filter=typ2zhihu.lua
```
此时example.md可以直接导入知乎发布，并且数学公式正常识别。
