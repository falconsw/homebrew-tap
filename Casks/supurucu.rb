cask "supurucu" do
  version "0.3.3"
  sha256 "d0c5cb98c5c9d39a758a852b0bd121448a7343b87695b76bd06f70b764c76755"

  url "https://github.com/falconsw/homebrew-tap/releases/download/supurucu-v#{version}/Supurucu-#{version}.dmg"
  name "Süpürücü"
  desc "Menu bar storage reclaimer and app uninstaller"
  homepage "https://github.com/falconsw/homebrew-tap"

  livecheck do
    url :url
    regex(/^supurucu-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Supurucu.app"

  uninstall quit: "com.falconsw.supurucu"

  zap trash: [
    "~/Library/Caches/com.falconsw.supurucu",
    "~/Library/HTTPStorages/com.falconsw.supurucu",
    "~/Library/Preferences/com.falconsw.supurucu.plist",
    "~/Library/Saved Application State/com.falconsw.supurucu.savedState",
  ]
end
