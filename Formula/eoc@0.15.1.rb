require "language/node"
class EocAT0151 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.15.1.tar.gz"
  version "0.15.1"
  sha256 "229f59bbe492d06fe359af74832dd5414a0df36421680526e5bfe317fa32b9a5"
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
