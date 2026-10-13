cask "supurucu" do
  version "0.5.2"
  sha256 "576184ddbfb0e3b1821755223491bb872831412e871ebd4abbb81637cef234c4"

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
