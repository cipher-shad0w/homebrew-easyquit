cask "easyquit" do
  version "1.1.0"
  sha256 "3248a57976e4075926d5bbe7e33d5fc25ed933b7a63e8fd9ec7057ba2db27dab"

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
