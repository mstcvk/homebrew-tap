cask "macrar" do
  version "1.4.2"
  sha256 "a8084238412a3a378cc4198e3b7312f4ecaf429b8c82d10ccd4bf7638a8d4ffa"

  url "https://github.com/mstcvk/MacRAR/releases/download/v#{version}/MacRAR-#{version}.dmg"
  name "MacRAR"
  desc "WinRAR-style archive manager (RAR, ZIP, 7z, TAR and 30+ formats)"
  homepage "https://github.com/mstcvk/MacRAR"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MacRAR.app"

  zap trash: [
    "~/Library/Application Support/MacRAR",
    "~/Library/Preferences/com.mesut.macrar.plist",
    "~/Library/Services/MacRAR*.workflow",
  ]
end
