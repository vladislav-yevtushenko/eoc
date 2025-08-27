require "language/node"
class EocAT0160 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.16.0.tar.gz"
  version "0.16.0"
  sha256 "1b1f9c018e109f0d512adb1688a683e461120677bbd518d3c7d3ede156a49e9f"
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
