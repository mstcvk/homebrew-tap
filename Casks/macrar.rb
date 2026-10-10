cask "macrar" do
  version "1.4.3"
  sha256 "befa3b1127b3bcada18f257b3d8f118534d21d2a29f24db34d2993a1d74a1f75"

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
