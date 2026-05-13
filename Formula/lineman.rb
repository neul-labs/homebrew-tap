class Lineman < Formula
  desc "Wireshark-grade packet analysis. Terminal-native speed."
  homepage "https://github.com/lineman-project/lineman"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lineman-project/lineman/releases/download/v0.1.0/lineman-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_X64"
    else
      url "https://github.com/lineman-project/lineman/releases/download/v0.1.0/lineman-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lineman-project/lineman/releases/download/v0.1.0/lineman-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    end
  end

  def install
    bin.install "lineman"
  end

  test do
    system "#{bin}/lineman", "--version"
  end
end
