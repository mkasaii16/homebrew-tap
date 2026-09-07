class Himd < Formula
  desc "Analyze and search your shell command history"
  homepage "https://github.com/mkasaii16/history_cmd"
  url "https://github.com/mkasaii16/history_cmd/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "567a8ed9a558f930f2bb3da0f79bfa8159db66587893060a2262610312cc6106"
  license "MIT"
  depends_on :macos

  resource "binary" do
    on_arm do
      url "https://github.com/mkasaii16/history_cmd/releases/download/v0.0.4/himd-aarch64-apple-darwin.tar.gz"
      sha256 "7e7788e1cad6d9a58ac62ce2fe3bbd48e043de84b25c2cb86f8565d3ed8782e5"
    end

    on_intel do
      url "https://github.com/mkasaii16/history_cmd/releases/download/v0.0.4/himd-x86_64-apple-darwin.tar.gz"
      sha256 "4e79bb404943f51fd8b350a097defe3ffccbb8d0526dfcbb9c2d1c2968fad73b"
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
