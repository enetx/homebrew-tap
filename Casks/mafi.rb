cask "mafi" do
  version "1.0.4"
  sha256 "ada29da89750d5b82ddca0f89216264ef4786e35d7487cc50647be2d5c448081"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
  end

  app "Mafi.app"
end
