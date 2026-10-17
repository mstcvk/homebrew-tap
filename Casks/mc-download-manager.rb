cask "mc-download-manager" do
  version "1.4.1"
  sha256 "1dc8dd5446f42b76e3184c8e3d9d7db192346fff4e1def6c00288f636c33e9c2"

  url "https://github.com/mstcvk/mc-download-manager/releases/download/v#{version}/MC-Download-Manager-#{version}.dmg"
  name "MC Download Manager"
  desc "Multi-connection download manager with Safari, Chrome and video support"
  homepage "https://github.com/mstcvk/mc-download-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MC Download Manager.app"

  uninstall quit: "com.mesutcevik.mcdownloadmanager"

  zap trash: [
    "~/Library/Application Support/MC Download Manager",
    "~/Library/Caches/com.mesutcevik.mcdownloadmanager",
    "~/Library/Containers/com.mesutcevik.mcdownloadmanager.safari",
    "~/Library/HTTPStorages/com.mesutcevik.mcdownloadmanager",
    "~/Library/Preferences/com.mesutcevik.mcdownloadmanager.plist",
    "~/Library/WebKit/com.mesutcevik.mcdownloadmanager",
  ]
end
