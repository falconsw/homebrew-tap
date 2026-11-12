cask "waitlight" do
  version "0.1.1"
  sha256 "3862f6df640366b549448bcb4842674c7b89f45fc600bebbcaa4b72c19f9a746"

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
