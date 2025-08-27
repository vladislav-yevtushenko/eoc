require "language/node"
class EocAT0150 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.15.0.tar.gz"
  version "0.15.0"
  sha256 "1fae83a767c5aceb7bae54788bf8a77d2f1739536baec6e573092f855ffa2201"
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
