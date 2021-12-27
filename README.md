```                _       _
 _ _  _ _  _ _ <_> _ _ <_> ___  ___
| | || | || '_>| || '_>| |/ | '/ ._>
`_. |`___||_|  |_||_|  |_|\_|_.\___.
<___'

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ dotfiles I use
 ░▓ author ▓ yurisuki <adam@adamnvrtil.fun>
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░

```

## table of contents
 -  [introduction](#introduction)
 -  [what does it look like?](#what-does-it-look-like)
 -  [installation](#installation)
 -  [additional](#additional)

# introduction
This rice is the one I use currently on [Arch Linux](https://www.archlinux.org/) and [Void Linux](https://voidlinux.org/), and it's highly dependant on [voidrice](https://github.com/LukeSmithxyz/voidrice) by [Luke Smith](https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA) with huge modifications I made to make it comfy as much as possible.

# what does it look like?
[![](screenshot.png)](http://yuri.rf.gd/yuririce)

By clicking on it you can show more screenshots!

# installation
It's really simple!

## Arch Linux
On ***CLEAN ARCH LINUX INSTALLATION*** do:
```shell
curl -L https://git.io/JkpdU | bash
```

***

## Void Linux
On **CLEAN VOID LINUX INSTALLATION** do:
```shell
curl -L https://git.io/JkpdC | bash
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
You might change browser to something else, because you don't like Firefox
```
sed -i 's/firefox/chromium/g' ~/.profile
# Replace "chromium" with any browser of your choice (that browser has to be installed) or leave "firefox" if you want firefox.
```
