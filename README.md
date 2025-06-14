# BatVim

- This is a repo that holds my NeoVim configuration, relying on Lua. 
- I have created my own little package manager, which I have called `BatMan`

- What to know:
    - All of my plugins are stored in the `pack/plugins/start` directory
    - The `plug-lock.json` file shows all of the plugins that I am using
    - In order to avoid having problems with that, I have used an `if-else` statement for any line of code that is used to configure a plugin

- Here is the structure of my config:

```plaintext
├── README.md
├── add-plugs.lua
├── init.lua
├── lua
│   ├── core
│   │   ├── abbreviations
│   │   │   ├── init.lua
│   │   │   ├── markdown.lua
│   │   │   ├── snippets
│   │   │   └── typos.lua
│   │   ├── commands
│   │   │   ├── gruvbox.lua
│   │   │   ├── indentation.lua
│   │   │   └── init.lua
│   │   ├── init.lua
│   │   ├── keymaps
│   │   │   ├── exit.lua
│   │   │   ├── init.lua
│   │   │   ├── navigation.lua
│   │   │   ├── nop.lua
│   │   │   ├── other.lua
│   │   │   └── surround.lua
│   │   ├── mine.ts
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
│   ├── myplugs
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
│   ├── stylua.toml
│   └── test.lua
├── nvim-structure.md
├── pack
│   └── plugins
│       └── start
│           ├── gruvbox
│           ├── noice
│           ├── nui
│           ├── plenary
│           └── whichkey
└── plug-lock.json

```
<!--
{
  echo '```plaintext'
  tree ~/.config/nvim -L 4 | sed '1d;$d;$d'
  echo '```'
} > nvim-structure.md
-->
