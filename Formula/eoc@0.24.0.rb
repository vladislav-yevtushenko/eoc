require "language/node"
class EocAT0240 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.24.0.tar.gz"
  version "0.24.0"
  sha256 "f2071d22b53c2e0946a4059de4cc4fa2de62188f957899efa11969c28e1e657b"
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
