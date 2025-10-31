cask "easyquit" do
  version "1.0.0"
  sha256 "544afc4182497b9af32f613e8dbd1742e0a6a751bfd89dae64293058621ec951"

  url "https://github.com/cipher-shad0w/EasyQuit/releases/download/v#{version}/EasyQuit.zip"
  name "EasyQuit"
  desc "Quickly quit or force quit applications on macOS"
  homepage "https://github.com/cipher-shad0w/EasyQuit"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "EasyQuit.app"

  zap trash: [
    "~/Library/Preferences/com.cipher-shad0w.EasyQuit.plist",
  ]
end
