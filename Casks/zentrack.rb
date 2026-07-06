cask "zentrack" do
  version "0.0.111"
  sha256 "575b1a307a142db1cb1004bafe187ffa9a0cbdf946e56ea64d1b050d04be351e"

  url "https://github.com/ridala/zentrack-download/releases/download/#{version}/ZenTrack-#{version}-macos-arm64.dmg",
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
