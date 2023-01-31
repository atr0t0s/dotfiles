# Atrotos' Config Files
This repository contains config files for the following programs:
- [Alacritty](https://alacritty.org/)
- [Htop](https://htop.dev/)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [MPV](https://mpv.io/)
- [MSMTP](https://marlam.de/msmtp/)
- [Mutt](http://www.mutt.org/)/[Neomutt](https://neomutt.org/guide/configuration.html)
- [Neofetch](https://github.com/dylanaraps/neofetch)
- [Neovim](https://neovim.io/)
- [TheFuck](https://github.com/nvbn/thefuck)
- [WeeChat](https://weechat.org/)
- [ZSH](https://www.zsh.org/)

and a list of packages I install with [Brew](https://brew.sh).

## In Particular
### Neovim
Make sure to check out [my Neovim](https://github.com/0xAtrotos/dotfiles/tree/main/nvim) dotfiles if you're looking for some inspiration into creating your own config from scratch - my setup can compete with some of the popular Neovim distros like Lunarvim and AstroNvim while being very minimalistic and simplistic to setup and maintain. You can go ahead and use it as is (make sure to study my keymaps file), but I do suggest you build your entire Neovim configs from scratch; it is fun and you will be exceedingly quicker and more efficient, no matter if you use Neovim for editing text, code or configs.

### What's wrong with VSCode?
Nothing really. Use what you like, when you like it. I happen to like both VSCode and VIM. I happen to like VIM more. Especially when it comes to Neovim with Lua support, I find it exceptionally easy to customize and use. Moreover I feel that when I use the mouse I'm slowed down. VIM makes me very efficient. Also I'm really lazy. Moving my arm from keyboard to mouse and back all day long really grinds my gears (and some joints). That's why I also use Qutebrowser. I mostly need two programs running on my computer - a terminal emulator and a browser. Those can both be used with a keyboard only. If you don't like Qutebrowser there is also Vimium plugin for Chrome/Brave/Arc browsers, which adds VIM motions to your browser. Nowadays I only use the mouse for clicking stuff inside Skype. Remember what I said about using what you like when you like it? I don't like Skype but unfortunately I use it for work voice calls. It is a vile piece of software and if you can avoid using it you probably should. Fortunately telegram and slack have keybindings.

### Neomutt
I'd never heard of Mutt or Neomutt until I landed on Luke Smith's [mutt-wizard](https://muttwizard.com/). Mutt is email in the terminal. You should check it out. It's been quite some time since I've last seen gmail's ugly web interface.

### Kitty vs. Alacritty
I have not found a reason to use one over the other, however I currently use Alacritty. I do open up Kitty from time to time too. The only differences I have in each, pertaining to my configs herein, are font size and font family. Both terminal emulators are cross-patfrom, OpenGL and blazingly fast. It makes no sense to really run performance tests on terminal emulators, but for what it's worth Kitty benchmarks a bit faster in most tests (i.e. tree parsing, recursive directory listing, etc). However the benchmarks are very close. 

There are mainly two reasons I've defaulted to using Alacritty over Kitty:
1. I like that the config is in Yaml - I find it a bit easier to read, at least for shorter config files.
2. By design, Alacritty does not support tabs, so this helps me stick to Tmux. In Kitty I would often end up with a mix of Tmux panes and windows, and Kitty tabs on top of that. The reasons I prefer using Tmux over Kitty tabs, are:
	a. Tmux allows you to move your panes and order them in particular ways that cannot be easily created or maintained with tabs.
	b. Tmux sessions - my session is autosaved and persists through reboots
	c. I can transfer my tmux session(s) to any terminal emulator should I decide to. Many times I close Alacritty and fire up Kitty (i.e. because I want to try out some Kitty config or whatever). I fire up my tmux and everything's there as I left it.
