class Recurl < Formula
  desc "Drop-in curl replacement with automatic anti-bot bypass"
  homepage "https://github.com/neul-labs/recurl"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/recurl/releases/download/v0.1.2/recurl-darwin-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_X64"
    else
      url "https://github.com/neul-labs/recurl/releases/download/v0.1.2/recurl-darwin-aarch64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/recurl/releases/download/v0.1.2/recurl-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    else
      url "https://github.com/neul-labs/recurl/releases/download/v0.1.2/recurl-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
  end

  def install
    bin.install "bin/recurl"
    bin.install "bin/recurld" if File.exist?("bin/recurld")
  end

  test do
    system "#{bin}/recurl", "--version"
    system "#{bin}/recurl", "-s", "https://httpbin.org/get"
  end
end
