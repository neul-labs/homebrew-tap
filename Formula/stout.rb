# typed: false
# frozen_string_literal: true

class Stout < Formula
  desc "Fast, Rust-based Homebrew-compatible package manager"
  homepage "https://github.com/neul-labs/stout"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.1/stout-aarch64-apple-darwin.tar.gz"
      sha256 "2ee00971d8ec47787683003f0031abb0577c50582e55fe8fdcfe06cbdeb74ecb"
    end
    on_intel do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.1/stout-x86_64-apple-darwin.tar.gz"
      sha256 "426ce3439dfbf9b17dec451ef9063cc1fb8ae1df16e515b5087f05944e7b9a4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.1/stout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7ddda14bd8c3a0bbaff84bd6e6845a42837793f7cf230c9ba7d8a7f22dd826c"
    end
    on_intel do
      url "https://github.com/neul-labs/stout/releases/download/v0.2.1/stout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "957dfd3c7911e1c0cd7e6d7b00cbb1d72c4d4d68561faa47088026db90187cda"
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
