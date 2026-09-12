# Homebrew Tap by moJ KS

Official Homebrew formulas for command-line developer tools created by
**moJ KS**.

## Available tools

| Tool | Description | Platforms |
| --- | --- | --- |
| [`codesweep`](https://github.com/mkasaii16/codesweep-releases) | Finds duplicate and structurally similar functions in TypeScript, JavaScript, Flutter/Dart, Kotlin, Swift, Go, and C#/.NET projects. | macOS Apple Silicon, macOS Intel, Linux x86-64 |
| [`himd`](https://github.com/mkasaii16/history_cmd) | Interactive shell history search and command discovery. | macOS Apple Silicon, macOS Intel, Linux x86-64 |

## Install codesweep

```bash
brew tap mkasaii16/tap
brew trust --formula mkasaii16/tap/codesweep
brew install mkasaii16/tap/codesweep
```

Try it:

```bash
codesweep ./my-typescript-project
codesweep ./web-app -lg javascript
codesweep ./flutter-app -lg flutter
codesweep ./android-app -lg kotlin
codesweep ./ios-app -lg swift
codesweep ./go-service -lg go
codesweep ./dotnet-app -lg csharp
codesweep --help
```

The full installation guide, Windows installer, release downloads, command
reference, and usage examples are in the
[`codesweep` documentation](https://github.com/mkasaii16/codesweep-releases#readme).

## Install himd

```bash
brew tap mkasaii16/tap
brew trust --formula mkasaii16/tap/himd
brew install mkasaii16/tap/himd
```

Try it:

```bash
himd
himd --help
```

## Update

```bash
brew update
brew upgrade codesweep
brew upgrade himd
```

## Uninstall

```bash
brew uninstall codesweep
brew uninstall himd
```

Removing a formula does not remove the tap. If neither tool is installed and
you no longer want the tap:

```bash
brew untap mkasaii16/tap
```

## About this tap

One tap can contain multiple formulas, so `codesweep` and `himd` share this
repository. Release workflows update their own formula without replacing the
other tool.

Maintained by **moJ KS** · [GitHub](https://github.com/mkasaii16)
