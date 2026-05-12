class Grite < Formula
  desc "Issue tracker that lives in your repo, built for AI agents and humans"
  homepage "https://github.com/neul-labs/grite"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/neul-labs/grite/releases/download/v0.5.3/grite-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "ae0b6e38f699f25f1d88e8d99dcc653b6e74a55310335a6969c3c0f2e6122365"
    end
    on_arm do
      url "https://github.com/neul-labs/grite/releases/download/v0.5.3/grite-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "6fe77ccb7eb16391b821b2d0a7afe6676f129e76e13874b64ce56aa7433b0e14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/neul-labs/grite/releases/download/v0.5.3/grite-0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2627082f7687512c61f1bb7c3eee24642c5c63fca40c293ec39c83539ebb0773"
    end
    on_arm do
      url "https://github.com/neul-labs/grite/releases/download/v0.5.3/grite-0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a453c9be2dec035b3b1cc7e5c935c86583d377c476bc7abcb45713585685e99"
    end
  end

  def install
    bin.install "grite"
  end

  test do
    system "#{bin}/grite", "--version"
  end
end
