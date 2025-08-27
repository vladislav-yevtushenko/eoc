require "language/node"
class EocAT0230 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.23.0.tar.gz"
  version "0.23.0"
  sha256 "37df9ae9c282b6bf10e64429b458b76fcf26f5b5b44f0c98aedf888cd90f3fef"
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
