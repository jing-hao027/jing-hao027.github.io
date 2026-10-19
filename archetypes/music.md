---
title: "{{ replace .File.ContentBaseName `-` ` ` | title }}"
date: {{ .Date }}
# 音频文件放到 static/music/ 下，然后写文件名，例如 /music/song.mp3
audio: ""
audio_title: ""
tags: []
---
