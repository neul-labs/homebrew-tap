# typed: false
# frozen_string_literal: true

class Stout < Formula
  desc "Fast, Rust-based Homebrew-compatible package manager"
  homepage "https://github.com/neul-labs/stout"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.2/stout-aarch64-apple-darwin.tar.gz"
      sha256 "fdd438f5ed1ebce25a136bfc0cef75244f454509e35348f575b7e042f8349f96"
    end
    on_intel do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.2/stout-x86_64-apple-darwin.tar.gz"
      sha256 "1719417fb3f0601bfe8ec467e198452a097999dd1829d916de2c4263068d2ff9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.2/stout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87f9dcf367f0ca87f345762ba92edfe3086408c9aa0d11d2ca52032c1e857a1d"
    end
    on_intel do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.2/stout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4776e395e5e65c204fa4ffc3b6bc73405ed84fd8b3357904fe88e7640886441d"
    end
  end

  def install
    bin.install "stout"
    generate_completions_from_executable(bin/"stout", "completions")
    man1.install Dir["man/*.1"] if Dir.exist?("man")
  end

  test do
    assert_match "stout #{version}", shell_output("#{bin}/stout --version")
    assert_match "formulas", shell_output("#{bin}/stout doctor 2>&1", 1)
  end
end
