---
title: How to plan and host a Mastodon instance
author: koyu
type: post
pubDate: 2020-11-01T00:57:24+00:00
url: /2020/11/01/how-to-plan-and-host-a-mastodon-instance/
featured_image: /wp-content/uploads/2020/11/taylor-vick-aWslrFhs1w4-unsplash.jpg
categories:
  - Uncategorized
---
 

As you might have heard I host my own Mastodon instance with a few other people. You might plan to host your own as well (and in most cases create a single-user instance). Maybe you are not okay with the server you&#8217;re currently on or you want to get into the dirty bits of hosting and maintaining a Mastodon instance. In this guide you will find recommendations on how to host your own Mastodon instance and what issues you might encounter while running it.

## Resource consumption

So before we start I&#8217;ll tell you what koyu.space consumes (a Mastodon instance with 2.1k users, an averaged-sized instance):

  * 12GB RAM in idle
  * 40GB database storage (on a SSD, because we get a lot of queries)
  * More than 120GB of media (on a CDN, because it&#8217;s cheaper to host _that_ many media files plus we don&#8217;t have the bandwidth to stream all this)

So that might sound a lot, but that&#8217;s because we host user data of 2.1k people which are quite a lot. Your single-user instance might be happy with 2-4GB of RAM and 20GB for the DB and OS plus a CDN (because maybe you have way too many cat pictures to post).

## Hosting providers

### masto.host

masto.host is a very friendly and easy way to start your new Mastodon instance. Just sign up and it works. Hugo is a nice guy and fixed a lot of issues I encountered when I was having my instance over there. The only downside is that you don&#8217;t get into the fun stuff on actually hosting and maintaining a Mastodon instance, but it&#8217;s a good thing if you have no idea what you&#8217;re doing and you&#8217;re still not ready to play with the big guns (a Linux console). You can get a Mastodon instance up and running in 24 hours and servers start at six bucks a month. You can choose a subdomain (which is free) or bring in your own (they usually start at 90 cents per year, especially .xyz domains). If you plan to modify Mastodon and want to run it then you can&#8217;t do it here for security reasons.

### DigitalOcean

DigitalOcean is the next host I can recommend for people who want to tinker with a Linux system and want to set up everything by themselves. They also have been successful if I had any issues. The only problem is that it might get expensive over time. Otherwise their servers run stable and fast as well which is pretty much needed for Mastodon (especially disk bandwidth for the database).

## Setup and Help

If you use Masto.host your Mastodon instance is already set up. It&#8217;s fully-managed hosting after all meaning you get a Mastodon instance without lifting a finger. On DigitalOcean on the other hand you have two options where one has been proven the most successful. First the DigitalOcean Markteplace already has an image with Mastodon preinstalled, but most of the time it&#8217;s a very outdated version and I am not even sure if it works correctly once set up. The other option (which is also the best) is to install it manually. You can follow the instructions over on <a rel="noreferrer noopener" href="https://docs.joinmastodon.org" data-type="URL" data-id="https://docs.joinmastodon.org" target="_blank">docs.joinmastodon.org</a> which are very detailed and explain the topic very well. If you plan to have users and want them to receive e-mails you also have to get an SMTP server from somwhere. I was pretty happy with mailbox.org which want 2,50€ a month so they can continue to offer their services while being privacy-friendly (and their mail service is very fitting for a support desk+Mastodon mailer). Also a good thing about their service is that I was able to pay with my debit card over PayPal, because I don&#8217;t own a credit card, but they also offer more payment options one of which is the anonymous Paysafecard (which you can get in every gas station here in Germany and pay with cash which is the most anonymous way to pay).



So these are my recommendations on how to get started on hosting your own Mastodon instance. I hope I could open up your eyes a little bit and if you need a little help you can reach me on IRC at irc.koyu.space or via e-mail on me@koyu.space. Thanks for reading!