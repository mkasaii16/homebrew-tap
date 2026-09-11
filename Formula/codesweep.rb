class Codesweep < Formula
  desc "Find structurally duplicate and similar functions across multiple languages"
  homepage "https://github.com/mkasaii16/codesweep-releases"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.0/codesweep-v0.1.0-macos-arm64.tar.gz"
      sha256 "17f17ab6f2101f45873617b03e15058f0ed9e15095c3a4c8ee75d47f8ce333a3"
    else
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.0/codesweep-v0.1.0-macos-x64.tar.gz"
      sha256 "93c6ce25490b4e0bfd69fb904de5a5d430b5482890e4b19aa90e54f289705bad"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.0/codesweep-v0.1.0-linux-x64.tar.gz"
    sha256 "07fcbcc25da92b9b14891dc353d0171abc7eb0da6e183200857aebb8bad28780"
  end

  def install
    bin.install "codesweep"
  end

  test do
    assert_match "codesweep #{version}", shell_output("#{bin}/codesweep --version")
  end
end
