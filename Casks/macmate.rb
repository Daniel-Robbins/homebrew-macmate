cask "macmate" do
  version "1.0.1"
  sha256 "a78be4c68a17212240a8e84fe95d4dc3aefa72f4c018431f64f763479b63dadb"

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
