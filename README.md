# Doom-Neovim-LE - A Config Inspired by doom-nvim. 

More info about [doom-nvim](https://github.com/doom-neovim/doom-nvim) 

## Table of Contents: 

<!--toc:start-->
- [Doom Neovim Lazy Edition](#Doom-NeoVim-LE)
  - [Table of Contents](#-table-of-contents)
  - [Features](## Features)
  - [Requirements](#-requirements)
  - [Installation](#-installation)
  - [Configuration](#-configuration)
  - [Commands](#-commands)
  - [Contributing](#-contributing)
  - [Credits](#-credits)
  - [License](#-license)
  <!--toc:end-->

## Features:

Stylish Themes!
  > Simply go to lua/plugins/themes.lua to view of your installed themes

Awesome Default Plugins!
 > Basic, Fast, Popular and Easy to use deafult plugins for all of you programming needs
>
Games and cool Fun stuff!
 > You can now procastinate with ease using all cool games inside Neovim

Easy Integration! 
 > Easily switch between services such as Godot or Obsidian to Neovim in a cool seamless way

## Requirements

If you already have a ```.config/nvim``` folder, it is recommended you make a backup of it somewhere 
e.g. rename it to ```.config/nvim.backup``` 

p.s. If you are new and never configured Neovim before than you can skip this section

## Installation 

First of all, clone the repository using th following command:
```git clone https://github.com/RainbowShatter/Doom-neovim-LE.git ~/.config/nvim```

Now remove the `.git`
```rm -rf ~/.config/nvim/.git```

Then after it has been cloned you can now start Neovim with the ```nvim``` command

## Configuration

To Install/Uninstall Plugins you need to see what category the plugin you want to install, then install it in one 
of the following:

```
fun-n-games.lua          -- basically some thing to make you entertained;
integration.lua          -- any integration plugin designed to combine Neovim to anything is availible here;
language-servers.lua     -- any plugin related to [Mason]
tools.lua                -- has a very, very specific funtionality;
themes.lua               -- every installed theme you may have is availible here;
user-experience.lua      -- affects the functionality and how it feels to use Neovim;

[Mason]: https://github.com/williamboman/mason.nvim
```

You can configure each component by linking the files to specific locations too, although I forgot how to do it.

## Commands

All of the commands availible in this config are the same as those in VSCode when you use the VSCodeVim plugin

## Contributions

Contributions are always welcome!
See [`CONTRIBUTING`](/CONTRIBUTING.md) for ways to get started.

## Credits

Credits to [LazyVim](https://github.com/LazyVim/LazyVim), [Vimacs] and [doom-nvim](https://github.com/doom-neovim/doom-nvim) for inspiration on a powerful config like this one

## License

See [README](/README.md) 
