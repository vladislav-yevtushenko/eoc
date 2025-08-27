require "language/node"
class EocAT0302 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.30.2.tar.gz"
  version "0.30.2"
  sha256 "6fdb453a64068ce1f9b1eb6c9358eae6af51b39cd88de8f00249e698e1b419f9"
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
