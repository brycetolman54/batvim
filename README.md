# BatVim

This is a repo that holds my NeoVim configuration, relying on Lua.

I have created my own little package manager, which I have called [BatMan](https://github.com/brycetolman54/batman/tree/main)

All of my plugins are stored in the `pack/plugins/start` directory

If you would like to use this config, run the following:

```sh
# if you have a config already, back it up with:
# mv ~/.config/nvim ~/.config/nvim.bak

git clone https://github.com/brycetolman54/batvim.git \
~/.config/nvim > /dev/null

git clone https://github.com/brycetolman54/batman.git \
~/.config/nvim/pack/plugins/start/batman > /dev/null

~/.config/nvim/pack/plugins/start/batman/setup.sh

nvim
```

Then run this command inside of NeoVim:

```vim
:BatLoad
```

Exit and reopen neovim and you should be good to go.

Here is the structure of my config:
<!--
{
  echo '```plaintext'
  tree ~/.config/nvim -L 4 | sed '1d;$d;$d'
  echo '```'
} >> README.md
-->
```plaintext
├── README.md
├── init.lua
├── lua
│   ├── core
│   │   ├── abbreviations
│   │   │   ├── init.lua
│   │   │   ├── markdown.lua
│   │   │   ├── snippets
│   │   │   └── typos.lua
│   │   ├── colors
│   │   │   ├── init.lua
│   │   │   └── terminal.lua
│   │   ├── init.lua
│   │   ├── keymaps
│   │   │   ├── exit.lua
│   │   │   ├── init.lua
│   │   │   ├── navigation.lua
│   │   │   ├── nop.lua
│   │   │   ├── other.lua
│   │   │   ├── surround.lua
│   │   │   └── terminal.lua
│   │   └── options
│   │       ├── command.lua
│   │       ├── copy.lua
│   │       ├── files.lua
│   │       ├── fold.lua
│   │       ├── gruvbox.lua
│   │       ├── highlight.lua
│   │       ├── indentation.lua
│   │       ├── init.lua
│   │       ├── list.lua
│   │       ├── number.lua
│   │       ├── other.lua
│   │       ├── scroll.lua
│   │       ├── search.lua
│   │       ├── spell.lua
│   │       └── wrap.lua
│   ├── language
│   │   ├── check
│   │   │   ├── init.lua
│   │   │   └── rust.lua
│   │   ├── diagnostic
│   │   │   ├── init.lua
│   │   │   └── rust.lua
│   │   ├── format
│   │   │   ├── init.lua
│   │   │   ├── lua.lua
│   │   │   └── rust.lua
│   │   └── init.lua
│   ├── setup
│   │   ├── barbar.lua
│   │   ├── batman.lua
│   │   ├── gruvbox.lua
│   │   ├── init.lua
│   │   ├── lualine.lua
│   │   ├── neo-tree.lua
│   │   ├── noice.lua
│   │   ├── notify.lua
│   │   └── whichkey.lua
│   └── start.lua
├── pack
│   └── plugins
│       └── start
│           ├── barbar
│           ├── batman
│           ├── dev-icons
│           ├── gruvbox
│           ├── lualine
│           ├── neo-tree
│           ├── noice
│           ├── notify
│           ├── nui
│           ├── plenary
│           └── whichkey
└── stylua.toml

```
