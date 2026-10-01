cask "tfx" do
  version "0.10.0"
  sha256 "5ca0a6e4cc39b93d1da9bdde89c008f02f6428c421c85748123e9a0285edf182"

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
