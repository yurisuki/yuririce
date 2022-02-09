# Import `zoom.py`
import zoom

# Do(n't) load autoconfig
config.load_autoconfig(False)

# Adblock method
c.content.blocking.method = 'both'

# Don't enter in insert mode when you load new page.
c.input.insert_mode.leave_on_load = True

# Use spell check.
#c.spellcheck.languages = ['cs-CZ']

# Search engines
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'wa': 'https://wiki.archlinux.org/?search={}', 'g': 'https://google.com/search?q={}', 'yt': 'https://youtube.com/search?q={}', 'r': 'https://www.reddit.com/search/?q={}', 'w': 'http://cs.wikipedia.org/wiki/Special:Search?search={}'}

# Bind userscripts
config.bind('e', 'spawn --userscript qr')
config.bind('x', 'spawn --userscript view_in_mpv')
