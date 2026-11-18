# typed: strict
# frozen_string_literal: true

cask "mouseflick" do
  version "1.0.11"
  sha256 "e15afd3c29be5a8773e1008bd96f1ac0b3f5c4fcd26ae1ded1249e1a67a759a8"

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
