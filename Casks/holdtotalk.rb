cask "holdtotalk" do
  version "2.2.1"
  sha256 "d54ce853a658ec9155a3282194a29b183ac9f1a243d573da036caaecf01dacf0"

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
