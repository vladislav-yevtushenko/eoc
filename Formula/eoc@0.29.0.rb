require "language/node"
class EocAT0290 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.29.0.tar.gz"
  version "0.29.0"
  sha256 "9f5443e588ba8464b56db020cd9e8aad64fdbe208f30ee08dfce09a4d8236e14"
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
