cask "papershelf" do
  version "1.18.0"
  sha256 "8a3607d56e33dac6beb601e8ee7afb7a196ff985a0ae3029ff2e56ab50c759f6"

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
