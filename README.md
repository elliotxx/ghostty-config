# Ghostty Config

Personal [Ghostty](https://ghostty.org/) configuration.

This repository is intended to be used either directly as `~/.config/ghostty`
or as a submodule of `elliotxx/dotfiles`.

## Files

- `config` - main Ghostty configuration file.

## Requirements

- Ghostty on macOS.
- Fira Code font.

Install the font with Homebrew:

```sh
brew install --cask font-fira-code
```

## Install

Clone this repository directly:

```sh
git clone git@github.com:elliotxx/ghostty-config.git ~/.config/ghostty
```

Or install it from an existing checkout:

```sh
./scripts/install.sh
```

When used through `elliotxx/dotfiles`, this repository is mounted as the
`.config/ghostty` submodule and exposed through:

```text
~/.config/ghostty -> ~/workspace/dotfiles/.config/ghostty
```

## Notes

- Bare `Esc` is intentionally not bound by Ghostty so Vim and Neovim can use it
  to leave insert mode.
- Machine-local secrets, host names, proxies, tokens, and internal endpoints
  should not be committed here.

