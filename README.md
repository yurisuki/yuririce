```                _       _
 _ _  _ _  _ _ <_> _ _ <_> ___  ___
| | || | || '_>| || '_>| |/ | '/ ._>
`_. |`___||_|  |_||_|  |_|\_|_.\___.
<___'

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ dotfiles I use
 ░▓ author ▓ yurisuki <yurisuki@waifu.club>
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░

.config
-------
dunst 		> customizable notification daemon
i3 (i3-gaps)	> tilling wm I use
i3blocks	> feed for status bar
ranger 		> vim-inspired filemanager
*rc 		> some aliases and shortcuts
wall*	 	> wallpapers I use for desktop and lockscreen
sxhkd		> keybindings master
bm*		> aliases for time saving
-------

.scripts
--------
`tree ~/.scripts`
--------
```

## table of contents
 -  [introduction](#introduction)
 -  [what does it look like?](#what-does-it-look-like)
 -  [installation](#installation)
 -  [additional](#additional)
 -  [todo/goals](#todogoals)
 -  [faq](#faq)

# introduction
This rice is the one I use currently on [Arch Linux](https://www.archlinux.org/) and [Void Linux](https://voidlinux.org/), and it's highly dependant on [voidrice](https://github.com/LukeSmithxyz/voidrice) by [Luke Smith](https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA) with huge modifications I made to make it comfy as much as possible

# what does it look like?
[![](screenshot.png)](http://yuri.rf.gd/yuririce)

By clicking on it you can show more screenshots!

# installation
It's really simple!

## Arch Linux
On ***CLEAN ARCH LINUX INSTALLATION*** do:
```shell
curl https://puu.sh/DJFrq/331309f26c.sh | bash
```

## Void Linux
On **CLEAN VOID LINUX INSTALLATION** do:
```shell
curl https://puu.sh/DJFvz/609753a3b8.sh | bash
```

***

### additional
My rice uses Czech keyboard layout, so you might want to change it.
```
# Change keyboard layout to English
rm ~/.scripts/tools/remaps
mv ~/.scripts/tools/remaps_ ~/.scripts/tools/remaps
#
# Change locale to English
sed -i 's/cs_CZ/en_US/g' ~/.bashrc
```
You might change browser to something else, because you don't like Chromium
```
sed -i 's/chromium/firefox/g' ~/.profile
# Replace "firefox" with any browser of your choice (that browser has to be installed) or leave "firefox" if you want firefox.
```
# todo/goals
- Get rid of i3 (move to `bspwm` or `herbstluftwm`)

You can also help me achieve my goals by contibuting to my GitHub repository by using pull requests and issues (if any bug occurs.)

# faq
What wallpaper do you currently use?
- I've got my FTP server, where I have my website. I made a ["script"](https://github.com/yurisuki/yuririce/commit/9e8907be6809b99f8402d239e4f2b8a1079bfd26) which automatically uploades my wallpaper whenever I change my wallpaper to that FTP server, and in the result, I can view my wallpaper from anywhere and use it as my [New tab page](http://yuri.rf.gd/newpage/).

[My current wallpaper](http://yuri.rf.gd/wall.png)

[My New tab page, which uses my current wallpaper](http://yuri.rf.gd/newpage/)
