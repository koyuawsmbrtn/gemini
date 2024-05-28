---
title: "Security notice: Vidar Stealer abuses the Mastodon social network"
author: koyu
pubDate: 2021-11-22T12:44:56+01:00
type: post
image: 1582502580092-0dc3088c7aeb
---

One of Vidar’s unique behaviors is in obtaining dynamic configuration and C2 connectivity. Once executed, Vidar’s first step is to receive its configuration, by abusing the Mastodon social network.

Mastodon, is an open-source social network that imitates Twitter on many levels. Recent cases suggest that threat actors set up social profiles in Mastodon as a communication channel with the stealers. The social profiles don’t contain much more than a random post. The description of the profile contains the IP of the C2 the stealer should communicate with to receive configuration, dependency files and the location to which to upload its stolen data.

Vidar connects to a predefined user within the Mastodon network via an HTTPS protocol so it can access the C2 IP for further instructions.

![Vidar Stealer C2 Bot](https://cyberint.com/wp-content/uploads/2021/10/Vidar-Stealer-2.png)

Highlighted from [https://cyberint.com/blog/research/vidar-stealer-abuses-mastadon-social-network/](https://cyberint.com/blog/research/vidar-stealer-abuses-mastadon-social-network/)
