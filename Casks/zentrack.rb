cask "zentrack" do
  version "0.0.1"
  sha256 "a0b8ed5ffc6e14c11332f6f5dda859a708a3da5d63cdce5898bdc92db2842ebf"

  url "https://github.com/ridala/zentrack-download/releases/download/v#{version}/ZenTrack-#{version}-macos-arm64.dmg",
      verified: "github.com/ridala/zentrack-download/"
  name "ZenTrack"
  desc "Local-first time tracking and focus app"
  homepage "https://usezentrack.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "ZenTrack.app"

  zap trash: [
    "~/Library/Application Support/com.zentrack.desktop",
    "~/Library/Preferences/com.zentrack.desktop.plist",
    "~/Library/Saved Application State/com.zentrack.desktop.savedState",
  ]

  caveats <<~EOS
    ZenTrack is not yet signed with an Apple Developer certificate.
    After installing, clear the quarantine flag before opening the app:

      xattr -dr com.apple.quarantine /Applications/ZenTrack.app
  EOS
end
