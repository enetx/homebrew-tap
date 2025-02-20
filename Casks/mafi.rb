cask "mafi" do
  version "1.0.5"
  sha256 "c2173312340763db75731c3daa07ee799e9de3874cc6671b8c995a590fa3c0f4"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Mafi.app"
  end

  app "Mafi.app"
end
