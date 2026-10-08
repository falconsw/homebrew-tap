cask "supurucu" do
  version "0.4.0"
  sha256 "cd4f28c9a8e8e44be153202e8574552855cfcccae1ef78cf2550a425e06fca7a"

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
