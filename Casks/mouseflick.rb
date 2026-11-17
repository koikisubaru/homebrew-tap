# typed: strict
# frozen_string_literal: true

cask "mouseflick" do
  version "1.0.10"
  sha256 "b699d86f97700cf3f5fe861c13d534860753d71458bf9a9efab4fbd7f06b7d61"

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
