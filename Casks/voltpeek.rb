cask "voltpeek" do
  version "1.3.0"
  sha256 "1a9e8cc9d18cb7071cf7b41b07100af72ac80b29aca7caba32d76f936e14da4b"

  url "https://github.com/kumarprabhakar2121/VoltPeek/releases/download/v#{version}/VoltPeek-#{version}.dmg"
  name "VoltPeek"
  desc "Menu bar battery and charging telemetry for Mac"
  homepage "https://github.com/kumarprabhakar2121/VoltPeek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "VoltPeek.app"

  zap trash: [
    "~/Library/Preferences/com.voltpeek.app.plist",
  ]

  caveats <<~EOS
    VoltPeek is currently ad-hoc signed (not Apple notarized yet).
    On first launch, right-click the app → Open, or allow it in
    System Settings → Privacy & Security.
  EOS
end
