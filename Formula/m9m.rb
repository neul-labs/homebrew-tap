class M9m < Formula
  desc "High-performance workflow automation engine with n8n compatibility"
  homepage "https://github.com/neul-labs/m9m"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.1/m9m-darwin-amd64"
      sha256 "5612dead292aa590c7d9e3a2037f85dcb365b69c96af971dc53f2f08074754bf"
    else
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.1/m9m-darwin-arm64"
      sha256 "b5f0a975441e719f6f1d9053a185186db6bcaadcc0c60d832620411868b6e9b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.1/m9m-linux-amd64"
      sha256 "1573b9102fffd645e6a3e647bfc47af811059c3f58807aa691cda13899d26fce"
    else
      url "https://github.com/neul-labs/m9m/releases/download/v0.2.1/m9m-linux-arm64"
      sha256 "e81ee14187f5e7f565d8ce0923918a9932197137af462670c6c8441728ac0d3a"
    end
  end

  def install
    bin.install Dir["m9m*"].first => "m9m"
  end

  test do
    system "#{bin}/m9m", "version"
  end
end
