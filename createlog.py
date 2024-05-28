import os
import datetime

if os.path.exists("md"):
    mds = os.listdir("md")
    for md in mds:
        if md.endswith('.md'):
            os.rename("md/"+md, os.path.join("posts", md))

posts = []
for post in os.listdir('posts'):
    if post.endswith('.gmi'):
        posts.append(post)

with open('log.gmi', 'w+') as log:
    log.write("# Log\n\n")

# Sort files by date
posts.sort(key=lambda x: x.split("-")[0], reverse=True)

i = 0
for post in posts:
    with open(os.path.join("posts", post), 'r') as f:
        with open('log.gmi', 'a+') as log:
            if ".gmi" in post:
                title = f.read().split("\n")[0].split("# ")[1]
                date = post.split("-")[0]
                date = datetime.datetime.fromtimestamp(int(date)).strftime('%Y-%m-%d')
                log.write("=> "+post+" "+date+": "+title+"\n")
    i += 1

# Move all *.md files to md/
if not os.path.exists("md"):
    os.mkdir("md")
posts = os.listdir("posts")
for post in posts:
    if post.endswith('.md'):
        os.rename("posts/"+post, os.path.join("md", post))