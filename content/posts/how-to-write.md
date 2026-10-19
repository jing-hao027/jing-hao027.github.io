---
title: "写作指南：怎么给网站加内容"
date: 2026-10-18
tags: ["指南"]
summary: "这篇文章教你在哪里写新文章、加作品、加音乐、加照片。"
---

这页就是你的“操作手册”，忘了怎么加内容时回来看这里。

## 写一篇新文章

1. 打开 `content/posts/` 文件夹
2. 新建一个文件，例如 `my-first-note.md`（文件名用英文，网站地址会更漂亮）
3. 文件开头写：

```markdown
---
title: "文章标题"
date: 2026-10-20
tags: ["标签1", "标签2"]
summary: "一句话摘要，显示在列表里"
---

正文从这里开始……
```

4. 保存后运行 `hugo server`，打开 <http://localhost:1313> 就能看到。

> 注意：`draft: true` 表示草稿，草稿默认不显示。确认要发布就把它改成 `false` 或删掉这一行。

## 加一个作品

在 `content/works/` 里新建 `项目名.md`：

```markdown
---
title: "我的第一个作品"
date: 2026-10-20
cover: "/images/作品封面.jpg"
summary: "一句话介绍"
link: "https://github.com/你的用户名/仓库名"
tags: ["Python", "小工具"]
---

## 做了什么

介绍一下这个作品……
```

封面图放到 `static/images/` 文件夹里，文件名对上就行。

## 加一首音乐

1. 把 mp3 文件放到 `static/music/` 文件夹
2. 在 `content/music/` 里新建 `歌名.md`：

```markdown
---
title: "歌名 - 歌手"
date: 2026-10-20
audio: "/music/歌名.mp3"
audio_title: "试听"
---

几句听后感。
```

> 提示：音乐文件有版权风险，自己创作或有授权的才放上来。

## 加一张照片

1. 在 `content/photos/` 里新建一个文件夹，比如 `content/photos/秋天散步/`
2. 把照片直接放进这个文件夹，再新建一个 `index.md`：

```markdown
---
title: "秋天散步"
date: 2026-10-20
---

随手拍的一些照片。
```

文件夹里的图片会自动全部显示出来。

## 改网站基本信息

打开根目录的 `hugo.yaml`，可以改：

- `title`：网站标题
- `params.homeTitle` / `homeSubtitle`：首页大标题和副标题
- `params.nav`：导航栏菜单
