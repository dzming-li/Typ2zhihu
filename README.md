# typ2zhihu
帮助把typst文件转化为知乎可以识别的markdown文件
## 使用
确保你安装了pandoc，然后下载typ2zhihu.lua到你要转化的typ文件夹下。
```bash
pandoc example.typ -o example.md --lua-filter=typ2zhihu.lua
```
此时example.md可以直接导入知乎发布，并且数学公式正常识别。
