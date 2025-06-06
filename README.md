# NeoVim Setup

- This is the neovim setup that I am using.
- What to know:
    - I am not using a plugin manager.
    - All of my plugins (I will not use many) are stored in the `pack/plugins/start` directory
    - The `plug-lock.json` file shows all of the plugins that I am using
        - It shows the `user/repo` so you can clone them after you clone this repo
    - I may add a script to clone them for you in the future

- Here is the structure of my config:

```plaintext
├── README.md
├── init.lua
├── lua
│   ├── core
│   │   ├── commands
│   │   │   ├── gruvbox.lua
│   │   │   └── init.lua
│   │   ├── init.lua
│   │   ├── keymaps
│   │   │   └── init.lua
│   │   └── options
│   │       ├── gruvbox.lua
│   │       └── init.lua
│   ├── myplugs
│   │   ├── check
│   │   │   ├── init.lua
│   │   │   └── rust.lua
│   │   ├── format
│   │   │   ├── init.lua
│   │   │   ├── lua.lua
│   │   │   └── rust.lua
│   │   └── init.lua
│   └── stylua.toml
├── nvim-structure.md
├── pack
│   └── plugins
│       └── start
│           └── gruvbox
└── plug-lock.json
```
<!--
{
  echo '```plaintext'
  tree ~/.config/nvim -L 4 | sed '1d;$d;$d'
  echo '```'
} > nvim-structure.md
-->
