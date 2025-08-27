require "language/node"
class EocAT0211 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.21.1.tar.gz"
  version "0.21.1"
  sha256 "27c23a7dffd40db906ec5ab1e774200e1ed2b251041a504536d55e0a331ae63a"
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
