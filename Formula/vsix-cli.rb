class VsixCli < Formula
  desc "Download VS Code extensions (.vsix files) from official or open-source marketplaces"
  homepage "https://github.com/hongkongkiwi/vsix-cli"
  url "https://github.com/hongkongkiwi/vsix-cli/releases/download/v4.7.4/vsix-cli"
  version "4.7.4"
  sha256 "18fb35316364e41810d06cd5909af22fd253d628d85a3c4e5fa85cf05e61a038"
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