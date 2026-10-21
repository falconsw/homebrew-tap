cask "folderpad" do
  version "1.0.3"
  sha256 "9de25d3fe67887f144168d6337b5e3c482e1517e9e89d342f6748b4cc23ff861"

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
