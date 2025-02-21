cask "mafi" do
  version "1.0.10"
  sha256 "7242858a90e5a5671460550077f05105cb4f00f7f04bfa74652d7d8703b6d5d4"

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
