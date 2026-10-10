cask "durucu" do
  version "1.1.0"
  sha256 "fc96fd79534292a1b52aec8cfd60a6f598407737d632152dbecd69f7a6838d99"

  url "https://github.com/falconsw/durucu/releases/download/v#{version}/Durucu-#{version}.dmg"
  name "Dürücü"
  desc "Archive browser, extractor and creator"
  homepage "https://github.com/falconsw/durucu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Durucu.app"

  uninstall quit: "com.falconsw.durucu"

  zap trash: [
    "~/Library/Caches/com.falconsw.durucu",
    "~/Library/HTTPStorages/com.falconsw.durucu",
    "~/Library/Preferences/com.falconsw.durucu.plist",
    "~/Library/Saved Application State/com.falconsw.durucu.savedState",
  ]
end
