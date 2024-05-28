---
title: How to compile butt on Solus
author: koyu
type: post
pubDate: 2020-07-23T02:51:43+00:00
url: /2020/07/23/how-to-compile-butt-on-solus/
featured_image: /wp-content/uploads/2020/11/saso-tusar-QtgGYlug6Cw-unsplash.jpg
categories:
  - Uncategorized
---
This is a small tutorial on how I got&nbsp;`butt`&nbsp;(broadcast using this tool) working on Solus.

First download the source code from here:&nbsp;<a href="https://danielnoethen.de/butt/" target="_blank" rel="noreferrer noopener">https://danielnoethen.de/butt/</a>  
and extract it. Now navigate to that folder with your terminal and issue the following commands in that folder.

Install compiler and dependencies:

<pre class="wp-block-code"><code>sudo eopkg install -c system.devel

sudo eopkg install libogg-devel libvorbis-devel lame-devel libflac-devel portaudio-devel libsamplerate-devel  fdk-aac-devel fltk-devel  opus-devel  libx11-devel bdwgc-dbginfo libpng-devel fontconfig-devel libxfixes-devel libxext-devel libxft-devel</code></pre>

Compile butt:

<pre class="wp-block-code"><code>./configure --prefix=/usr
make -j4
sudo make install</code></pre>

Now run the command butt from your terminal&nbsp;🎉

<img src="/wp-content/uploads/2020/09/1595465454-290531-877d9f0c099bd7ad.png" alt="" width="640"></figure>