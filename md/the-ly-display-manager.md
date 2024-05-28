---
title: The ly display manager
author: koyu
type: post
pubDate: 2021-05-11T22:38:00+00:00
url: /2021/05/11/the-ly-display-manager/
featured_image: /wp-content/uploads/2021/06/anunay-rai-awMWm6ayLTc-unsplash-scaled-e1624833834998.jpg
categories:
  - Uncategorized
---
Some time ago I found a nice TTY-based display manager. I know that some folks have put startx into their .bashrc or start it manually which is okay, but not nearly as good as having a full-blown display manager that starts fast and loads everything including your user session. ly is also included in koyuOS, my own operating system based on Arch Linux, because koyuOS should be as leightweight, but easy-to-use as possible. I think I found the middle-ground there. I think choosing ly was a better decision than lightdm, because display managers like these already load up a whole X server in itself which makes the bootup process a little slower. My current koyuOS installation is using EFISTUB so I don&#8217;t have to use bootloaders and all that crap to load up my OS, the EFI firmware on-board handles it all nicely for me. I also disabled NetworkManager-wait-online.service, because it heavily influenced boot times by a few seconds. I hope I could help and you should definitely use ly, it&#8217;s a great display manager.

## References

  * <a href="https://github.com/koyuspace/koyuos" data-type="URL" data-id="https://github.com/koyuspace/koyuos" target="_blank" rel="noreferrer noopener">koyuOS</a>
  * <a href="https://aur.archlinux.org/packages/ly/" data-type="URL" data-id="https://aur.archlinux.org/packages/ly/" target="_blank" rel="noreferrer noopener">ly on the AUR</a>
  * <a href="https://github.com/nullgemm/ly" target="_blank" rel="noreferrer noopener">ly on GitHub</a>