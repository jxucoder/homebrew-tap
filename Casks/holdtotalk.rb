cask "holdtotalk" do
  version "2.3.0"
  sha256 "dd04c92f27831e5ca0cb7730b68e7f8542f9019f6e0fac2df10950e949fe98f3"

  url "https://github.com/Edamame-Labs/hold-to-talk/releases/download/v#{version}/HoldToTalk-v#{version}.zip"
  name "Hold to Talk"
  desc "Free, open-source voice dictation for macOS"
  homepage "https://holdtotalk.ai/"

  depends_on macos: ">= :sequoia"

  app "Hold To Talk.app"

  zap trash: [
    "~/Library/Application Support/HoldToTalk",
    "~/Library/Preferences/com.holdtotalk.app.plist",
  ]
end
