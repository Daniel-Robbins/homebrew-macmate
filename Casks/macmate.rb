cask "macmate" do
  version "1.0.14"
  sha256 "8405f04e13f7d5e02f562b99e399d43542731a6bdca15802c56ca4f3adbb7056"

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
