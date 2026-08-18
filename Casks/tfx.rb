cask "tfx" do
  version "0.9.11"
  sha256 "ac8b094bc4c0b2ac167ae75ff8f996fa511439a466bb1eb1c2bc843ac3d05536"

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
