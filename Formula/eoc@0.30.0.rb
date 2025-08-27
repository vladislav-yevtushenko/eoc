require "language/node"
class EocAT0300 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.30.0.tar.gz"
  version "0.30.0"
  sha256 "180aec316cf4ff21234a5eeb0c034131dbedfb3d81fe8e69967d68a3d92be8a8"
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
