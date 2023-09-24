## beex-386

自豪的使用beex作为静态博客生成系统

可能是已知的第一个第三方主题。

主题目前大小为1.4MiB

## 如何使用？

1. 去[这里](http://www.telihai.com/archives/9027/)下载beex
2. 将本仓库clone至_themes文件夹
3. 在`config.toml`里的themes一栏改为`beex-386`
4. 编辑`config`
5. 将favicon.ico放入static文件夹中
7. 愉快的开始写作吧
## 注意事项

- 主题不支持menus.top 只支持menus.main (排版格式相关，不计划也不会更改)
- 本主题遵循`{%- ctx -%}`风格(除非空格是必要的)
- 请将plugin中的`main-default.lua`修改后改为`main.lua`否则可能会报错
## Tweet

请在`./plugin/main.lua`中的`enable_tweet`字段设置为true

tweet的标题必须带有tweet,且beex_meta中的tags第一位必须设置为`tweet`
## 友人账

请在`main.lua`中设置好您的友人连接后，新建页面
在[BeexMeta](http://www.telihai.com/archives/9031/)中添加
```text
inlist: 0
template: friends.html
```
其中`inlist`字段是否删去请自行决定
## 页脚联系方式

详见./static/social，icon字段在html中将会以{{icon}}.svg的形式展现

## 鸣谢

[Simple Pixel Icon Pack](https://github.com/PaulLesur/plasma-pixel-icon-theme)

## 目前bug/TODOs

- 由于带了个点阵宋体，主题臃肿。尝试削减主题大小(目前已经由2MiB -> 820+ KiB)(macro复用)
