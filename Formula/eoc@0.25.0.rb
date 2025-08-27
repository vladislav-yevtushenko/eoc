require "language/node"
class EocAT0250 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.25.0.tar.gz"
  version "0.25.0"
  sha256 "2f87467ab0b4d2c3d1a44ca40d81cc45ce154ecac355b7f479c08e3bd21e35c0"
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
