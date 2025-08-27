require "language/node"
class EocAT0301 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.30.1.tar.gz"
  version "0.30.1"
  sha256 "31905f77773480f9556ee0e59e95fa7b4a0ebd52f97f2a484d60593cc96d18d4"
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
