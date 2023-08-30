## beex-386

可能是已知的第一个第三方主题。

不管你的审美是啥，我喜欢老电脑。

## 如何使用？

1. 去[这里](http://www.telihai.com/archives/9027/)下载beex
2. 将本仓库clone至_themes文件夹
3. 在`config.toml`里的themes一栏改为`beex-386`
4. 编辑`config.lua`文件
5. 愉快的开始写作吧

## 目前bug

- to_static filter报错

```
! Failed to load [sites.1]
    Custom {
    kind: Other,
    error: "! Render Error: Filter to_static\n    Error {\n    kind: InvalidData,\n    message: \"stream did not contain valid UTF-8\",\n}",
}

```

- 由于带了个点阵宋体，主题臃肿