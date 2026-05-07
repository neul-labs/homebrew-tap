class M9m < Formula
  desc "High-performance workflow automation engine with n8n compatibility"
  homepage "https://github.com/neul-labs/m9m"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.0/m9m-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.0/m9m-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.0/m9m-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.0/m9m-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["m9m*"].first => "m9m"
  end

  test do
    system "#{bin}/m9m", "version"
  end
end
