class Stkd < Formula
  desc "CLI for managing stacked pull requests on GitHub and GitLab"
  homepage "https://github.com/neul-labs/stkd"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/stkd/archive/refs/tags/v0.1.0.tar.gz"
      sha256 "55388226fea1817eebcd89f4c3c1207d12096b11b0d857ef04a7b383817ad1c4"
    else
      url "https://github.com/neul-labs/stkd/releases/download/v0.1.0/gt-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0be3ba2e0702dddc721e006ccfd275ddd816bc409656929ed55b08f65f481332"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/stkd/releases/download/v0.1.0/gt-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3cc6d538f36abec887894f612e42b4ffc4ced70d1b6d796fec51ffecac9ab8ed"
    end
  end

  depends_on "rust" => :build if Hardware::CPU.intel? && OS.mac?

  def install
    if build.stable? && (Hardware::CPU.intel? && OS.mac?)
      system "cargo", "install", "--path", "crates/stkd-cli", "--root", prefix
      bin.install "bin/gt"
    else
      bin.install "gt"
    end
  end

  test do
    system "#{bin}/gt", "--version"
  end
end
