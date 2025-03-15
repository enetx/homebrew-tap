cask "mafi" do
  version "1.0.38"
  sha256 "50108821972f312f9d6400128b786634c8bfc62264c3696ec1af02f3c55b5009"

  url "https://github.com/enetx/mafiapp/releases/download/v#{version}/Mafi.zip"
  name "Mafi"
  desc "Mafi macOS launcher"
  homepage "https://mafiapp.com"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/Mafi.app"
    system "codesign --force --deep --sign - #{appdir}/Mafi.app"
  end

  uninstall_preflight do
    system "[ -f ~/.local/bin/cbagent ] && ~/.local/bin/cbagent uninstall"
  end

  app "Mafi.app"

  caveats <<~EOS
    After installation, you may need to grant accessibility permissions to Mafi:
    1. Open System Settings -> Privacy & Security -> Accessibility.
    2. Click the "+" button and add "Mafi.app".
    3. Restart "Mafi.app" for the changes to take effect.

    If you encounter issues, try running:
      xattr -rd com.apple.quarantine #{appdir}/Mafi.app
      codesign --force --deep --sign - #{appdir}/Mafi.app

    You can copy the default configuration file using:
      mkdir -p ~/.config/mafi
      cp /Applications/Mafi.app/Contents/Resources/default-config.toml ~/.config/mafi/config.toml
  EOS
end
