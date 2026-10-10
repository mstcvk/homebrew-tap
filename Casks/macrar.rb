cask "macrar" do
  version "1.4.3"
  sha256 "1c1d90d335b267c4007f027d046bf3aaacbc9b27e7bd269ea18c44ac93479a97"

  url "https://github.com/mstcvk/MacRAR/releases/download/v#{version}/MacRAR-#{version}.dmg"
  name "MacRAR"
  desc "WinRAR-style archive manager (RAR, ZIP, 7z, TAR and 30+ formats)"
  homepage "https://github.com/mstcvk/MacRAR"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MacRAR.app"

  zap trash: [
    "~/Library/Application Support/MacRAR",
    "~/Library/Preferences/com.mesut.macrar.plist",
    "~/Library/Services/MacRAR*.workflow",
  ]
end
