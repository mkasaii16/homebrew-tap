class Codesweep < Formula
  desc "Find structurally duplicate and similar functions across multiple languages"
  homepage "https://github.com/mkasaii16/codesweep-releases"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.2.0/codesweep-v0.2.0-macos-arm64.tar.gz"
      sha256 "9b8f5a1e48a2f1608160b7078b0739dfdb0e01cc50116832a74281b91b4fd090"
    else
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.2.0/codesweep-v0.2.0-macos-x64.tar.gz"
      sha256 "60d8d25cda7a9a3e57b176d20d70966d493b62f7953e3ff8156cf72ee474f733"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.2.0/codesweep-v0.2.0-linux-x64.tar.gz"
    sha256 "14bf42293fd28e6711d44403663f6db75277024444b7b825c5c30441f23ac91b"
  end

  def install
    bin.install "codesweep"
  end

  test do
    assert_match "codesweep #{version}", shell_output("#{bin}/codesweep --version")
  end
end
