cask "waitlight" do
  version "0.1.2"
  sha256 "fb26716a55bb09d2d08cbb957855f2a2d7525530db55bc73b41e1e6eb96bdaea"

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
