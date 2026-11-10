cask "papershelf" do
  version "1.19.1"
  sha256 "2acece0b07f3fa71a741509aa7715711245cdf0c95d3bd68c3d81926d2bafe54"

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
