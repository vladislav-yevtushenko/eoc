require "language/node"
class EocAT0180 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.18.0.tar.gz"
  version "0.18.0"
  sha256 "1de03ab2b36b30cae71523c75d4191627dcfd52dfe505fbaba03ed31ca41bad6"
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
