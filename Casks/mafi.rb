cask "mafi" do
  version "1.0.0"
  sha256 "ea70630e2d213b011f9fc6533446eca9d9df7518fb0dbb44bc293ce6cad89d35"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
  end

  app "Mafi.app"
end
