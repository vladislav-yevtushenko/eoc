require "language/node"
class EocAT0132 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.13.2.tar.gz"
  version "0.13.2"
  sha256 "d74de474c2b36e1cc3dcd526b6e61c65a4a1089d83fb279f49896122c7da23b4"
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
