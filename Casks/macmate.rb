cask "macmate" do
  version "1.0.12"
  sha256 "b54642bf7b20f27404909d239159d0d7825e3b35d20c49537c5ddb768e7e3895"

  url "https://release.macmate.app/releases/MacMate-#{version}.dmg"
  name "MacMate"
  desc "Essential toolkit for headless Mac deployment - prevent sleep, virtual displays, audio routing"
  homepage "https://macmate.app"

  livecheck do
    url "https://release.macmate.app/releases/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "MacMate.app"

  zap trash: [
    "~/Library/Application Support/MacMate",
    "~/Library/Caches/app.macmate.app",
    "~/Library/Preferences/app.macmate.app.plist",
  ]
end
