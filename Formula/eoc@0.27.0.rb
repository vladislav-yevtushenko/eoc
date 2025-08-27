require "language/node"
class EocAT0270 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.27.0.tar.gz"
  version "0.27.0"
  sha256 "50533e387ad3a6cafcf40a8331049577727135b25eba389b8efb7299acad7d6c"
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
