class Rewget < Formula
  desc "wget-compatible wrapper with automatic fallback"
  homepage "https://github.com/neul-labs/rewget"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-macos-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_X64"
    else
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    else
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
  end

  depends_on "wget"

  def install
    bin.install "rewget"
    bin.install "rewgetd"
    generate_completions_from_executable(bin/"rewget", "--rewget-completions")
    man1.install "rewget.1" if File.exist?("rewget.1")
  end

  test do
    assert_match "rewget #{version}", shell_output("#{bin}/rewget --rewget-version")
  end
end
