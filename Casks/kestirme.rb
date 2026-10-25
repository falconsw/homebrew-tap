cask "kestirme" do
  version "1.0.0"
  sha256 "f610cdc2d3283192be413d16aa6bcf1541dc5d206f3ac28bc8eea64ea26f00e7"

  url "https://github.com/falconsw/kestirme/releases/download/v#{version}/Kestirme-#{version}.dmg"
  name "Kestirme"
  desc "Shows the frontmost app's keyboard shortcuts while Command is held"
  homepage "https://github.com/falconsw/kestirme"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Kestirme.app"

  uninstall quit: "com.falconsw.kestirme"

  zap trash: [
    "~/Library/Application Support/Kestirme",
    "~/Library/Caches/com.falconsw.kestirme",
    "~/Library/HTTPStorages/com.falconsw.kestirme",
    "~/Library/Preferences/com.falconsw.kestirme.plist",
  ]
end
