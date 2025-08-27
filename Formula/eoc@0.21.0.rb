require "language/node"
class EocAT0210 < Formula
  desc "Command-line Tool-Kit"
  homepage "https://github.com/objectionary/eoc"
  url "https://github.com/objectionary/eoc/archive/refs/tags/0.21.0.tar.gz"
  version "0.21.0"
  sha256 "a84bcb3a6c69f891071bedb21bb66b15074dd77cd62878e439a054ca554df936"
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
