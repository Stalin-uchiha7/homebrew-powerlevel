cask "powerlevel" do
  version "0.1.0"
  sha256 "923dbba138abc2b9b8e59259fc6cfdc615498e32b48ccb47d93ae628e5e7922f"

  url "https://github.com/Stalin-uchiha7/PowerLevel/releases/download/v#{version}/PowerLevel-#{version}.zip"
  name "Power Level"
  desc "Menu bar monitor that shows CPU load as a scouter power level"
  homepage "https://github.com/Stalin-uchiha7/PowerLevel"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "PowerLevel.app"

  zap trash: "~/Library/Preferences/dev.powerlevel.app.plist"

  caveats <<~EOS
    Power Level is free and not notarized by Apple, so macOS blocks the first launch:
      1. Open Power Level once (it will be blocked).
      2. System Settings → Privacy & Security → "PowerLevel was blocked…" → Open Anyway.
  EOS
end
