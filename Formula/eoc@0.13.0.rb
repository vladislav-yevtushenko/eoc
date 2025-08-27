require "language/node"
class EocAT0130 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.13.0.tar.gz"
  version "0.13.0"
  sha256 "a1f5bc4d46b0796abfd70b0946a1e2a6098175113f7b34df5c063beb3e7f3675"
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
