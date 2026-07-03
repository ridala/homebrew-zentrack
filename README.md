# ZenTrack Homebrew Tap

Install ZenTrack for macOS:

```sh
brew tap ridala/zentrack
brew trust ridala/zentrack
brew install --cask ridala/zentrack/zentrack
xattr -dr com.apple.quarantine /Applications/ZenTrack.app
open /Applications/ZenTrack.app
```

ZenTrack is currently unsigned and not notarized. The `xattr` command clears the macOS quarantine flag that can otherwise show a damaged-app warning for this alpha build.

To update after a new release:

```sh
brew update
brew upgrade --cask zentrack
xattr -dr com.apple.quarantine /Applications/ZenTrack.app
```

Homebrew re-applies the quarantine flag on every install and upgrade, so the `xattr` step is needed again after upgrading.

To uninstall:

```sh
brew uninstall --cask zentrack
```

To remove app data too:

```sh
brew uninstall --cask --zap zentrack
```
