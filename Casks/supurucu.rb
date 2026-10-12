cask "supurucu" do
  version "0.5.0"
  sha256 "0f95ee84a12fa83097a9373d7f0199391754a4216947ef24f3d035fb134a735e"

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
