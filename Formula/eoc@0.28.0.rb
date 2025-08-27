require "language/node"
class EocAT0280 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.28.0.tar.gz"
  version "0.28.0"
  sha256 "04bfa66273472d83f7d67573c192ccde4a2421c507cba30eb045ab44f30ac395"
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
