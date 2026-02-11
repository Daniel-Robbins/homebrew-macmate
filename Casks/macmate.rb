cask "macmate" do
  version "1.0.11"
  sha256 "59a91cc96955ca487151e0949db1ec6c4b88c7d545f0df946714cca07c77f30a"

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
