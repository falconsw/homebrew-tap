cask "supurucu" do
  version "0.5.1"
  sha256 "4327e2dd1afef405bb4a7ad6b78e4d07d8540951b1cdb91b306ae3cb6562a788"

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
