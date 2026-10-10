cask "macrar" do
  version "1.4.2"
  sha256 "4351a95cdf420a6441db83137e125e3fb157cb0592c1b532906fdb759fa889fa"

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
