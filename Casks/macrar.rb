cask "macrar" do
  version "1.4.4"
  sha256 "b96e6d90e1f6f0f7760a1b9df629f011c6d0c9da73936dee13bdf49602639169"

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
