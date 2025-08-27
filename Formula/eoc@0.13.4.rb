require "language/node"
class EocAT0134 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.13.4.tar.gz"
  version "0.13.4"
  sha256 "5d273105d921890b1549ca11a82a696a63c7eb3305b21d1d8e2775e24ef76938"
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
