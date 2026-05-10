class Rninja < Formula
  desc "Drop-in replacement for Ninja build system with caching and improved scheduling"
  homepage "https://github.com/neul-labs/rninja"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.3/rninja-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "ed1e36fa9354a0f05fc6bfc8ce82e8610f5bce58b82210a9d4210d587f73de70"
    end
    on_arm do
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.3/rninja-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "a6bd583a97a8453da905ed2ffb5c7529cbac0f9202353ae2e610656792ea2bfb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.3/rninja-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e526f11ecb43e441818815be481315bf7fd524e46ad14a981fa923c21f9f9444"
    end
    on_arm do
      url "https://github.com/neul-labs/rninja/releases/download/v0.1.3/rninja-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28c96939a9a5972e8deafc47f3f4abc5cdd6879f94887819ac04f1c2e83a5775"
    end
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
