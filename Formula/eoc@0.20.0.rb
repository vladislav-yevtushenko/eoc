require "language/node"
class EocAT0200 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.20.0.tar.gz"
  version "0.20.0"
  sha256 "c90d3138caa98378d5c704fde865da57633b2bf54e3e20ec836579265a1aa2b0"
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
