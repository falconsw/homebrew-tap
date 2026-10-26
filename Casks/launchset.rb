cask "launchset" do
  version "1.0.0"
  sha256 "0c563f011fe5b6a90e155b5a17abcb1ff92c5c4c2a4c22af0c383fb0406c3ed3"

  url "https://github.com/falconsw/launchset/releases/download/v#{version}/Launchset-#{version}.dmg"
  name "Launchset"
  desc "Opens sets of apps in one click from the menu bar"
  homepage "https://github.com/falconsw/launchset"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Launchset.app"

  uninstall quit: "com.falconsw.launchset"

  zap trash: [
    "~/Library/Application Support/Launchset",
    "~/Library/Caches/com.falconsw.launchset",
    "~/Library/HTTPStorages/com.falconsw.launchset",
    "~/Library/Preferences/com.falconsw.launchset.plist",
  ]
end
