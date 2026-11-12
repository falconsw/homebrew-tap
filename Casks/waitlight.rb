cask "waitlight" do
  version "0.1.0"
  sha256 "c25ddde4ed51a83e414971548dbe1d15efa780d3b53131dc3efb717bb0903e50"

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
