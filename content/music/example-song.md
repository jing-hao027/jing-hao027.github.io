---
title: "示例歌单：安静下来的下午"
date: 2026-10-14
tags: ["歌单"]
---

这是音乐栏目的示例。下面这个播放器放的是 `static/music/demo.wav`（一段短提示音），
用来演示效果，你可以换成自己的音乐。

## 怎么换成你自己的音乐

1. 把 mp3 文件放进 `mysite\static\music\` 文件夹，例如 `我的歌.mp3`
2. 在文章里写：

```markdown
{{</* audio src="/music/我的歌.mp3" title="歌名 - 歌手" */>}}
```

3. 或者用文件开头的 `audio` 参数（推荐，播放器会更规整）：

```yaml
---
title: "歌名 - 歌手"
date: 2026-10-20
audio: "/music/我的歌.mp3"
audio_title: "试听"
---
```

## 试听

{{< audio src="/music/demo.wav" title="示例音效（请替换成你的音乐）" >}}

下面是听后感区域，随便写点什么。
