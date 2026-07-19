cask "voltpeek" do
  version "1.1.0"
  sha256 "571571bae322b975bc3ec1929c904017e55f79ff2047e3a70a25433afc84036b"

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
