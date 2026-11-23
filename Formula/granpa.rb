class Granpa < Formula
  include Language::Python::Shebang

  desc "Book Gran Pared climbing slots from the shell"
  homepage "https://github.com/jonaprieto/granpa"
  url "https://github.com/jonaprieto/granpa/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6a979851d5e8b4002cc5bd839f9b36288ce0836dc0af08186cca6c70e518fc71"
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
