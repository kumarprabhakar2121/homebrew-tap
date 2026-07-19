cask "voltpeek" do
  version "1.1.1"
  sha256 "087090ab5313333fa23b7d958de2a03ec0750b278c43d886b7edb9576845639c"

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
