require "language/node"
class EocAT0170 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.17.0.tar.gz"
  version "0.17.0"
  sha256 "496f0520219516e9ea529afee1d9d3411e0fe9fbb5861efd90a502a37f7a902b"
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
