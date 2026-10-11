cask "mc-download-manager" do
  version "1.3.0"
  sha256 "da5c92884b53d8aacaebf5f2e29a96953f8bdc5acdbdc19b895da7cda7855a2a"

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
