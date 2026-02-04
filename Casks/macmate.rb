cask "macmate" do
  version "1.0.10"
  sha256 "5f8ec333df545b0a822b2db6a5ebbb4e4cf15f43e186a12e51c1ed0563a342ce"

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
