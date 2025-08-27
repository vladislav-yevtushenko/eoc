require "language/node"
class EocAT0281 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.28.1.tar.gz"
  version "0.28.1"
  sha256 "3cd64c788eeff1c0db1a142c882ad02b0dcd19547b91e31f4cdf6a53f9d8af6a"
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
