class Himd < Formula
  desc "Analyze and search your shell command history"
  homepage "https://github.com/mkasaii16/history_cmd"
  url "https://github.com/mkasaii16/history_cmd/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "d9bd266b142c52ad86c57c9326c38b12eae6c64fe26d7fdb504f5a69324aaecf"
  license "MIT"
  depends_on :macos

  resource "binary" do
    on_arm do
      url "https://github.com/mkasaii16/history_cmd/releases/download/v0.0.3/himd-aarch64-apple-darwin.tar.gz"
      sha256 "079694e9687f8848d9b23551caf42a8064434ced61e5d756ef419e37081cdbda"
    end

    on_intel do
      url "https://github.com/mkasaii16/history_cmd/releases/download/v0.0.3/himd-x86_64-apple-darwin.tar.gz"
      sha256 "afccb6c9969c38c330c55411f58dc53a598d578aaea5fbcce7b1fc4f7a7ece93"
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
