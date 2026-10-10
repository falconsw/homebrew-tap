cask "durucu" do
  version "1.0.0"
  sha256 "522eb7bab4115a922e6670192c51d7f098912f45fa02e9474a0657f60ffe0421"

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
