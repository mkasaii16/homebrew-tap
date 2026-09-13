class Codesweep < Formula
  desc "Find structurally duplicate and similar functions across multiple languages"
  homepage "https://github.com/mkasaii16/codesweep-releases"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.2/codesweep-v0.1.2-macos-arm64.tar.gz"
      sha256 "9a687d6aacf6dd673f92bca78c228c50fc821e4b12b8c555344c3a9fdaee7d37"
    else
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.2/codesweep-v0.1.2-macos-x64.tar.gz"
      sha256 "9fe6812ff5d4ead7292d16b5d4c34df0483aec5b7ea9b41ec4befa6055bb414b"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.2/codesweep-v0.1.2-linux-x64.tar.gz"
    sha256 "a2b10e6bcd66a7d4872cf4871c93792665600ade266e255ce3952bf6e0c360ce"
  end

  def install
    bin.install "codesweep"
  end

  test do
    assert_match "codesweep #{version}", shell_output("#{bin}/codesweep --version")
  end
end
