class Rjest < Formula
  desc "A fast Jest-compatible test runner written in Rust"
  homepage "https://github.com/neul-labs/rjest"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rjest/releases/download/v0.1.1/rjest-macos-x86_64.tar.gz"
      sha256 "61121a46d132de08f894b7232e0a37493bfafefe2314ba4ffa569b5e7f94f4d5"
    else
      url "https://github.com/neul-labs/rjest/releases/download/v0.1.1/rjest-macos-arm64.tar.gz"
      sha256 "7e5abedcd9f7b8020dc762ee402f2cfb63267826e5dbc8bab4ba50b0fed3a806"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rjest/releases/download/v0.1.1/rjest-linux-x86_64.tar.gz"
      sha256 "fc66f38b1219144e9031b72ad740dcdc3530ad3cf351887c8983ac4ce1f83688"
    else
      url "https://github.com/neul-labs/rjest/releases/download/v0.1.1/rjest-linux-aarch64.tar.gz"
      sha256 "e71e3fa54361661de3bc4f6a27d7bc161cdce3c9109d979748698a189553939a"
    end
  end

  def install
    bin.install "jest"
    bin.install "jestd"
  end

  test do
    system "#{bin}/jest", "--version"
  end
end
