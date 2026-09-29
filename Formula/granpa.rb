class Granpa < Formula
  include Language::Python::Shebang

  desc "Book Gran Pared climbing slots from the shell"
  homepage "https://github.com/jonaprieto/granpa"
  url "https://github.com/jonaprieto/granpa/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c5754d072321ebec867486ed282913ba86770f61cde8feb8ffab4f9311190a0d"
  license "MIT"
  head "https://github.com/jonaprieto/granpa.git", branch: "main"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "granpa.py"
    bin.install "granpa.py" => "granpa"
    pkgshare.install "skill"
  end

  def caveats
    <<~EOS
      To let Claude Code book for you, link the bundled skill:
        ln -s #{opt_pkgshare}/skill ~/.claude/skills/granpa
    EOS
  end

  test do
    assert_match "Book Gran Pared climbing slots", shell_output("#{bin}/granpa --help")
  end
end
