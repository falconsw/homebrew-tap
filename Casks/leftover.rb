cask "leftover" do
  version "1.0.2"
  sha256 "32334b4b6ef2c3b9c594ac04b2a58e71c1391a7ac82c789c448e51d718674001"

  url "https://github.com/falconsw/Leftover/releases/download/v#{version}/Leftover-#{version}.dmg"
  name "Leftover"
  desc "Menu bar app showing how much of your AI coding tools' usage limits is left"
  homepage "https://github.com/falconsw/Leftover"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Leftover.app"

  uninstall quit: "com.falconsw.leftover"

  zap trash: [
    "~/Library/Application Support/Leftover",
    "~/Library/Caches/com.falconsw.leftover",
    "~/Library/HTTPStorages/com.falconsw.leftover",
    "~/Library/HTTPStorages/com.falconsw.leftover.binarycookies",
    "~/Library/Preferences/com.falconsw.leftover.plist",
    "~/Library/WebKit/com.falconsw.leftover",
  ]
end
