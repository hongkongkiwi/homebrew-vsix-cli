class VsixCli < Formula
  desc "Download VS Code extensions (.vsix files) from official or open-source marketplaces"
  homepage "https://github.com/hongkongkiwi/vsix-cli"
  url "https://github.com/hongkongkiwi/vsix-cli/releases/download/v4.7.0/vsix-cli"
  version "4.7.0"
  sha256 "c8ba577a03c5629a66b09a09f5a2854fe2d39eac0473f9b46cae1a70f49a061a"
  license "MIT"

  depends_on "bash"
  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "vsix-cli"
  end

  test do
    system "#{bin}/vsix-cli", "--version"
    system "#{bin}/vsix-cli", "--help"
  end
end 