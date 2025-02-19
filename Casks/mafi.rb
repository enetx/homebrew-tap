cask "mafi" do
  version "1.0.2"
  sha256 "63cdcaef0d6953542b239a9f910a6b76ab981189adbfbcb6e127e3dc9db76772"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
  end

  app "Mafi.app"
end
