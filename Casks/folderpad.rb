cask "folderpad" do
  version "1.0.2"
  sha256 "614a7df3ad9671e7b338d5b428e8807e81e3a31a1e090e1026f84031d5d95414"

  url "https://github.com/falconsw/folderpad/releases/download/v#{version}/Folderpad-#{version}.dmg"
  name "Folderpad"
  desc "App folders in the Dock, replacing Launchpad folders"
  homepage "https://github.com/falconsw/folderpad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Folderpad.app"

  uninstall quit: "com.falconsw.folderpad"

  zap trash: [
    "~/Library/Caches/com.falconsw.folderpad",
    "~/Library/HTTPStorages/com.falconsw.folderpad",
    "~/Library/Preferences/com.falconsw.folderpad.plist",
    "~/Library/Saved Application State/com.falconsw.folderpad.savedState",
  ]

  caveats <<~EOS
    Groups (folders of aliases in /Applications) and Dock folders stay in place
    after Folderpad is uninstalled. Remove them in Folderpad first if you want them gone.
  EOS
end
