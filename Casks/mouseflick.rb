# typed: strict
# frozen_string_literal: true

cask "mouseflick" do
  version "1.0.13"
  sha256 "bfbf675f9e512875937d4aa764c3c8b1d3379ff8cd7af093a1f3832a334f42c4"

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
