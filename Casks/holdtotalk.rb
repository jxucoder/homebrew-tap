cask "holdtotalk" do
  version "2.2.0"
  sha256 "a14e80c8dbb36793e7ee3dd329bd069601dd4908805275f2c1aea5e84a636652"

  url "https://github.com/Edamame-Labs/hold-to-talk/releases/download/v#{version}/HoldToTalk-v#{version}.zip"
  name "Hold to Talk"
  desc "Free, open-source voice dictation for macOS"
  homepage "https://github.com/Edamame-Labs/hold-to-talk"

  depends_on macos: ">= :sequoia"

  app "Hold To Talk.app"

  zap trash: [
    "~/Library/Preferences/com.holdtotalk.app.plist",
  ]
end
