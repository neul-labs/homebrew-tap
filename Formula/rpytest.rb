class Rpytest < Formula
  desc "Rust-powered, drop-in replacement for pytest"
  homepage "https://github.com/neul-labs/rpytest"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "61036c874bcbc7981aa397a1b89194768d8ab6f00226da3724d593c98471081c"
    else
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "64df7758a83639aca32a9abda8e016410e320861f1275c0d88c71eee6c679032"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6337d2f80496fdc135e090f64d2cbf071f2f3038dedb133bee598c3d0a5dc5b2"
    else
      url "https://github.com/neul-labs/rpytest/releases/download/v0.1.2/rpytest-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4311d2194429d29c9c5eaa0154e9cd079c777ca9eeadee4678801149b556105f"
    end
  end

  def install
    bin.install "rpytest"
  end

  test do
    system "#{bin}/rpytest", "--version"
  end
end
