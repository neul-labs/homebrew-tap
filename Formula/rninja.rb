class Rninja < Formula
  desc "Drop-in replacement for Ninja build system with caching and improved scheduling"
  homepage "https://github.com/neul-labs/rninja"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.1/rninja-0.1.1-x86_64-apple-darwin.tar.gz"
    else
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.1/rninja-0.1.1-aarch64-apple-darwin.tar.gz"
    end
    sha256 "placeholder_sha256"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.1/rninja-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.1/rninja-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
    end
    sha256 "placeholder_sha256"
  end

  def install
    bin.install "rninja"
    bin.install "rninja-cached"
    bin.install "rninja-daemon"
  end

  test do
    system "#{bin}/rninja", "--version"
  end
end
