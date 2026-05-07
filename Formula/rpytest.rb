class Rpytest < Formula
  desc "Rust-powered, drop-in replacement for pytest"
  homepage "https://github.com/neul-labs/rpytest"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "rpytest"
  end

  test do
    system "#{bin}/rpytest", "--version"
  end
end
