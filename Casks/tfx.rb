cask "tfx" do
  version "0.9.10"
  sha256 "2fdf6285a3b04934fbb4e3648d5800ad8553b716cdb5af548c507d529384c1c7"

  url "https://github.com/fukuyori/tfx/releases/download/#{version}/tfx-#{version}.zip"
  name "tfx"
  desc "Keyboard-first file manager with a terminal-inspired interface"
  homepage "https://github.com/fukuyori/tfx"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "tfx.app"
  binary "#{appdir}/tfx.app/Contents/MacOS/tfx", target: "tfx"

  zap trash: "~/Library/Application Support/tfx"
end
