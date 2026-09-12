class Codesweep < Formula
  desc "Find structurally duplicate and similar functions across multiple languages"
  homepage "https://github.com/mkasaii16/codesweep-releases"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.1/codesweep-v0.1.1-macos-arm64.tar.gz"
      sha256 "3ca369baa63bec4a6a9e790170498350af8fa1aff5599d90b24fd484a73ec1e0"
    else
      url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.1/codesweep-v0.1.1-macos-x64.tar.gz"
      sha256 "52c625e6cc6208bc32c122265a47e8cc7b037137edc2cc7736cafd6cfe108865"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/mkasaii16/codesweep-releases/releases/download/v0.1.1/codesweep-v0.1.1-linux-x64.tar.gz"
    sha256 "f5fa7a6598bde91434609a2036d8241a13ec738a6c1a2c8e0679942183177b0a"
  end

  def install
    bin.install "codesweep"
  end

  test do
    assert_match "codesweep #{version}", shell_output("#{bin}/codesweep --version")
  end
end
