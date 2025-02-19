cask "mafi" do
  version "1.0.3"
  sha256 "3eda440e287a7aa6ae31d6bce0121ed3bdcecdd0f79be371aef2784231126a57"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
  end

  app "Mafi.app"
end
