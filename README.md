Usage:
```
  ./bootstrap.sh
```

Vim 8.2+ uses native package support. Initialize the fuzzy finder and syntax
definition packages with:
```
git submodule update --init --recursive
```

The fuzzy finder mappings are `,t` for files, `,b` for buffers, and `,g` for
ripgrep. Run `~/.vim/pack/plugins/start/fzf/install --bin` once to install the
fzf executable.
Done.
Any existing dotfiles that would be overwritten are copied here,
    use `git diff` to see what you want to keep.

Inspiration drawn from:
  https://github.com/mathiasbynens/dotfiles
  https://github.com/gmarik/vimfiles
