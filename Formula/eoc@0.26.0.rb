require "language/node"
class EocAT0260 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.26.0.tar.gz"
  version "0.26.0"
  sha256 "09f200fbe5d9163f778e54897aff41369f1f81ef7dd02858d1d3f42573c84c94"
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
