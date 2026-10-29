cask "leftover" do
  version "1.0.1"
  sha256 "3a4f1a879ca7212cd795b83161af76f9e1134530704c15b70fa80eac12d1ea80"

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
