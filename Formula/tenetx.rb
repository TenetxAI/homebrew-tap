class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.7/tenetx_darwin_arm64.tar.gz"
      sha256 "723e276817b291eaab88f55bf44415b5c50875773b7833feaeb166b99a03242b"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.7/tenetx_darwin_amd64.tar.gz"
      sha256 "61bddf0274885ef5cb3dc90f9a7e12be86761a83f9c7dd06e86f23d9eb688c72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.7/tenetx_linux_arm64.tar.gz"
      sha256 "7a8c7778e1fc1f0b84c5e5da6c9fc5b09de0ef8598757c82a1d61b67eac9f51c"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.7/tenetx_linux_amd64.tar.gz"
      sha256 "64e729dec0faa0ae18cbf81e98283b528e7693a10bb7b645b324983f160aa4b1"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
