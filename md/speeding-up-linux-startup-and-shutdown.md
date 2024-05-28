---
title: "Speeding Up Linux Startup and Shutdown"
author: koyu
pubDate: 2021-11-23T01:18:37+01:00
type: post
image: 1614728263952-84ea256f9679
---

In this post I'm running down different ways to speed up your Linux system.

## Running a kernel with less modules

This requires some advanced tinkering with kernel configurations and all that fun stuff and intended for advanced users only. Running my system with a custom kernel didn't bring me any noticable differences in terms of speed and performance, but general load slightly improved.

## Using systemd to eliminate services that start for too long

With `sudo systemd-analyze blame` you can see what services take the longest to start up.

```
[koyu@luna ~]$ sudo systemd-analyze blame
7.077s plymouth-quit-wait.service
6.332s NetworkManager-wait-online.service
```

So disabling `plymouth-quit-wait.service` and `NetworkManager-wait-online.service` would improve startup times by a whopping 13 seconds! Check your system and see how much more seconds you can save each time you boot up your Linux box.

## Cutting service stop times

Usually my system shuts off in three seconds so waiting around three seconds for a service to shut down should be sufficient, everything above that gets brutally killed anyway and the system shuts down. Not very recommended and many people might cringe, but this helped improve shut down times especially when some crappy service was hanging the whole shutdown sequence. Search for the line `DefaultTimeoutStopSec=90s` and adjust it to your liking in the following config files:

* /etc/systemd/system.conf
* /etc/systemd/user.conf

## Using EFISTUB instead of a bootloader

If supported EFISTUB loads your kernel directly using your EFI chip. This is great, because you don't need a bootloader then that searches for everything that's required to boot up your system. Depending on your distribution it's a different experience. On Arch you simply install `efistubmgr-git` from the AUR which is a EFISTUB management tool written by an old friend of mine. I wonder what that guy does these days.
