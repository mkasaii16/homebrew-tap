class Himd < Formula
  desc "Analyze and search your shell command history"
  homepage "https://github.com/mkasaii16/history_cmd"
  url "https://github.com/mkasaii16/history_cmd/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "bd288185cab5b98c26abb55811945ac17da0289850dd5e77a154d0e2081cb2ec"
  license "MIT"
  depends_on :macos

  resource "binary" do
    on_arm do
      url "https://github.com/mkasaii16/history_cmd/releases/download/v0.0.2/himd-aarch64-apple-darwin.tar.gz"
      sha256 "103b5ddaed91c20b396745cf2a5e71315edbea0c31a50a6f2f48b74f503840f4"
    end

    on_intel do
      url "https://github.com/mkasaii16/history_cmd/releases/download/v0.0.2/himd-x86_64-apple-darwin.tar.gz"
      sha256 "a813f14245f0fc52a8b0576954a9d50f38a39df5d29b3a4bb85f6feebb23ae7b"
    end
  end

  def install
    resource("binary").stage do
      bin.install "himd"
    end
  end

  test do
    assert_match "himd #{version}", shell_output("#{bin}/himd --version")
  end
end
