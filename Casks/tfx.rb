cask "tfx" do
  version "0.10.1"
  sha256 "f41cf20736a7fdbfa02a2d19c88f7466ab9307cad9e15bc3c2c7ff1222f79031"

  url "https://github.com/fukuyori/tfx/releases/download/#{version}/tfx-#{version}.zip"
  name "tfx"
  desc "Keyboard-first file manager with a terminal-inspired interface"
  homepage "https://github.com/fukuyori/tfx"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "tfx.app"
  command_wrapper "tfx", executable: "#{appdir}/tfx.app/Contents/MacOS/tfx"

  zap trash: "~/Library/Application Support/tfx"
end
