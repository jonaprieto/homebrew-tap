cask "papershelf" do
  version "1.21.0"
  sha256 "e318fd7466201293265eba521b77cb25074aafa2521a4ee619dcc804d4ae228f"

  url "https://github.com/jonaprieto/papershelf/releases/download/v#{version}/PaperShelf-#{version}.dmg"
  name "PaperShelf"
  desc "macOS PDF reader and research library"
homepage "https://jonaprieto.github.io/papershelf/"

depends_on macos: :sonoma

app "PaperShelf.app"

  caveats <<~EOS
    PaperShelf is ad-hoc signed while notarization is on the roadmap.
    If macOS blocks the first launch, right-click PaperShelf.app in Finder and choose Open.
  EOS

  zap trash: [
    "~/Library/Application Support/PaperShelf",
    "~/Library/Preferences/com.jonaprieto.pdfhammer.plist",
  ]
end
