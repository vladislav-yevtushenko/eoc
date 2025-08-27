require "language/node"
class EocAT0140 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.14.0.tar.gz"
  version "0.14.0"
  sha256 "29cc7064c9919ee9f3b5cdd8b92b22fb9158a42794d11f6f90794616554cf258"
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
