cask "mafi" do
  version "1.0.1"
  sha256 "4ff4e4dd333da5179eea0b9453b09e2cb963a94d37c4855e8203f296892967cb"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
  end

  app "Mafi.app"
end
