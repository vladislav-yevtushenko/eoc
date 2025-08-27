require "language/node"
class EocAT0131 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.13.1.tar.gz"
  version "0.13.1"
  sha256 "3097b02bfacb347ee7c026f2341e3688c2fd4ca586b2e70eaed14ac05781a5b2"
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
