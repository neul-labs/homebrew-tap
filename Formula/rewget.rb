class Rewget < Formula
  desc "wget-compatible wrapper with automatic fallback"
  homepage "https://github.com/neul-labs/rewget"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-macos-x64.tar.gz"
      sha256 "e676d59fed37ab7768a8390775dcee02fca8fdc124a33f959953492956136ae3"
    else
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-macos-arm64.tar.gz"
      sha256 "479f7e55b8c4fe3cef52d063579af44a8655ee2843ecef9a9c2fc99958e32978"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-linux-x64.tar.gz"
      sha256 "0b70cdb2c0e71d39a810fba4974d223fdce0cf5e9c8b628887e2c4efa2ca7b79"
    else
      url "https://github.com/neul-labs/rewget/releases/download/v1.0.1/rewget-linux-arm64.tar.gz"
      sha256 "59c087072d6ee2ad48a1ba3950f984b81a24a061aa2ef7a35dd96b7fd4b96e94"
    end
  end

  depends_on "wget"

  def install
    bin.install "rewget"
    bin.install "rewgetd"
    generate_completions_from_executable(bin/"rewget", "--rewget-completions")
    man1.install "rewget.1" if File.exist?("rewget.1")
  end

  test do
    assert_match "rewget #{version}", shell_output("#{bin}/rewget --rewget-version")
  end
end
