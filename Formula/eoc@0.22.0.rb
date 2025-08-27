require "language/node"
class EocAT0220 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.22.0.tar.gz"
  version "0.22.0"
  sha256 "13f3fe6b67e1e867afa6881cf29f551755b034384e935ae30375d8d2dce0ec0d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/eoc", "--version"
  end
end
