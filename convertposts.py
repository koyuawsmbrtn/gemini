#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os.path
from md2gemini import md2gemini # type: ignore
from datetime import date

posts = []
for file in os.listdir('posts'):
    if file.endswith('.md'):
        posts.append(file)
    if file.endswith('.gmi'):
        os.remove('posts/' + file)
for post in posts:
    with open('posts/' + post, 'r') as f:
        content = f.read()
        title = content.split("---")[1].split("title: ")[1].split("\n")[0]
        datec = content.split("---")[1].split("pubDate: ")[1].split("\n")[0].split("T")[0]
        dateo = datec.split("-")
        dated = date(int(dateo[0]), int(dateo[1]), int(dateo[2]))
        datec = str(dated.strftime("%s"))
        content = content.split("---")[2]
        content = "# "+title+"\n\n"+content
        gemtext = md2gemini(content)
        with open('posts/' + datec + "-"+post.replace('.md', '.gmi'), 'w') as f:
            f.write(gemtext)