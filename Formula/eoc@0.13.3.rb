require "language/node"
class EocAT0133 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.13.3.tar.gz"
  version "0.13.3"
  sha256 "e1913dbc3159e1e480cfd61bf17b7d4a6512bb62feb056df9d855cad114112e7"
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
