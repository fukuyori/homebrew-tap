cask "tfx" do
  version "0.9.10"
  sha256 "e3412004fd1db7b56df506561191ef0ff12b0f32f542db64f8fa431a1983467b"

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
