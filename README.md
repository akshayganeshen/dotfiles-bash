# dotfiles-bash

Bash configuration.

## Quickstart

Clone into the home directory:

```sh
git clone https://github.com/akshayganeshen/dotfiles-bash.git ~/.bash.d
```

Link the bash profile:

```sh
ln -s ~/.bash.d/bashrc.bash ~/.bash_profile
```

## Extras

### Dircolor

If a `~/.dircolors` file exists, it will be automatically loaded.

For this to work, `dircolors` must also be installed.

### FZF

If a `~/.fzf` directory exists, the completions and key-bindings will be
automatically loaded.

### Git

A global `config/gitignore` file is included in the repo. To use it, add the
`excludesfile` configuration under the `[core]` section in `.gitconfig`:

```sh
cat >> ~/.gitconfig <<EOF
[core]
  excludesfile = ~/.bash.d/config/gitignore
EOF
```

### Homebrew

If Homebrew is available, `${PATH}` will be configured to prefer binaries
installed through there (some system binaries may be ignored).
