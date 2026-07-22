cask "voltpeek" do
  version "1.3.1"
  sha256 "2b2bb96fe331c93e6ef93103dc7c549f46223a4653207fcc2d2161bf4c2f0bf7"

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
