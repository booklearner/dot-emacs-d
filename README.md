# dot-emacs-d

<img src="https://user-images.githubusercontent.com/21013541/103108010-af0a2c80-4611-11eb-88df-249cbfbbdc0b.png" width=250>

Custom Emacs configuration. I'm currently using Emacs 28.x with the native compilation branch on macOS Monterey.

## Getting Started

Install Emacs with nix (see [nixconfig](https://github.com/booklearner/nixconfig):

```nix
{
  # ...
  environment = {
    systemPackages = with pkgs; [
      emacs
      # ...
    ];
  };
  # ...
}
```

No further setup is required (e.g. don't need to install `libgccjit` manually)


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
