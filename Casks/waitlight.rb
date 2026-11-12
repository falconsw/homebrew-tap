cask "waitlight" do
  version "0.1.3"
  sha256 "7998da3ef356f018f75182be33651c3ecd1b8d4545803553eb1b00cde7b4b76b"

  url "https://github.com/falconsw/Waitlight/releases/download/v#{version}/Waitlight-#{version}.dmg"
  name "Waitlight"
  desc "Menu bar app showing when Claude Code is waiting for you"
  homepage "https://github.com/falconsw/Waitlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Waitlight.app"

  uninstall quit: "com.falconsw.waitlight"

  zap trash: [
    "~/Library/Caches/com.falconsw.waitlight",
    "~/Library/HTTPStorages/com.falconsw.waitlight",
    "~/Library/Preferences/com.falconsw.waitlight.plist",
  ]
end
