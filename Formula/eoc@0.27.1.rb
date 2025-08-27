require "language/node"
class EocAT0271 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.27.1.tar.gz"
  version "0.27.1"
  sha256 "8adb4a66622ac3e415d8e552f8943de4aba09380fe14c6f9d7e1caf0d5a230a0"
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
