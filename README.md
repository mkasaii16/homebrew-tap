# Homebrew tap for himd

This is the official Homebrew tap for
[`himd`](https://github.com/mkasaii16/history_cmd), a fast command-line tool
for analyzing and searching Bash and Zsh history.

## Install

```console
brew tap mkasaii16/tap
brew trust --formula mkasaii16/tap/himd
brew install mkasaii16/tap/himd
```

Homebrew requires explicit trust for third-party formulae. This trusts only the
`himd` formula, rather than the entire tap.

## Update

```console
brew update
brew upgrade himd
```

`himd` also checks GitHub Releases in the background whenever it runs. When a
newer version is available, it prints the exact upgrade command. Publishing a
new tagged `himd` release triggers this tap and updates its Formula automatically.

## Uninstall

```console
brew uninstall himd
```

## Verify

```console
himd --version
himd --help
```
