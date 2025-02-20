cask "mafi" do
  version "1.0.6"
  sha256 "13ca94b0916de810fc87650733f39cad1bf1eb734e7c303c29a5a6e5912a548a"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app/Contents/MacOS/mafi"
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app/Contents/Helpers/cbagent"
  end

  app "Mafi.app"
end
