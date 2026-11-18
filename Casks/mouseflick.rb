# typed: strict
# frozen_string_literal: true

cask "mouseflick" do
  version "1.0.12"
  sha256 "dc85ffc6ae1ee8f0878ae3d335a3208039b9ea971324e21a8d0d2b9b5d11b055"

  url "https://mouseflick.com/mouseflick/MouseFlick-#{version}.dmg"
  name "MouseFlick"
  desc "Hold-and-swipe mouse and trackpad gesture utility"
  homepage "https://mouseflick.com/"

  livecheck do
    url "https://mouseflick.com/mouseflick/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MouseFlick.app"

  zap trash: [
    "~/Library/Application Support/MouseFlick",
    "~/Library/Preferences/app.mouseflick.plist",
  ]
end
