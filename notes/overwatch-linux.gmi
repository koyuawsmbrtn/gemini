---
title: Getting the latest Overwatch to run on Linux again
---

The last update broke Overwatch on Linux so I am showing you a neat trick you can apply to your Lutris instance of Overwatch to get it running again.

Go to your game options in Lutris and enable the advanced options. Then go to "system settings" and under "environment variables" add the environment variable `__GL_SHADER_DISK_CACHE_SKIP_CLEANUP` with the value `1`. Once you done that lower your DXVK version to version 1.7. If you done that launch your game and it shouldn't crash or disconnect anymore.