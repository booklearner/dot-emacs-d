# dot-emacs-d

<img src="https://user-images.githubusercontent.com/21013541/103108010-af0a2c80-4611-11eb-88df-249cbfbbdc0b.png" width=250>

Custom Emacs configuration. I'm currently using Emacs 28.x with the native compilation branch on macOS Big Sur.

## Getting Started

Install Emacs:

```shell
$ brew tap d12frosted/emacs-plus
$ brew install emacs-plus@28 --with-native-comp --with-xwidgets
```

NOTE: at the time of writing, `gcc` and `libgccjit` need to be re-installed to get native compilation to work.

```shell
$ brew reinstall gcc libgccjit
```

Check out this repository to either `~/.emacs.d` and start emacs as usual or somewhere else and start emacs from within this directly, pointing to `init.el`.

```shell
$ git clone git@github.com:booklearner/dot-emacs-d.git
$ cd dot-emacs-d
$ emacs -q --load init.el
```

Alternatively, I keep my config under `~/src/dot-emacs-d`, so I've symlinked my `init.el` file:

```shell
$ ln -s ~/src/dot-emacs-d/init.el ~/.emacs.d/init.el
```

## License

[BSD-3-Clause](LICENSE)
