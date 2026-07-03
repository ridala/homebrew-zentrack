# ZenTrack Homebrew Tap

Install ZenTrack for macOS:

```sh
brew tap ridala/zentrack
brew trust ridala/zentrack
brew install --cask --no-quarantine ridala/zentrack/zentrack
```

ZenTrack is currently unsigned and not notarized. The `--no-quarantine` flag is required to avoid the macOS Gatekeeper warning for this alpha build.

To update after a new release:

```sh
brew update
brew upgrade --cask zentrack
```

To uninstall:

```sh
brew uninstall --cask zentrack
```

To remove app data too:

```sh
brew uninstall --cask --zap zentrack
```
