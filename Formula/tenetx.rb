class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.2/tenetx_darwin_arm64.tar.gz"
      sha256 "0a1db7b11535162d980782539e833afe5645a8e57dff4c7c0180d40c836fe2a1"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.2/tenetx_darwin_amd64.tar.gz"
      sha256 "9e35b91496c07c4cd8cb510adfd86065d9c973851fee000fc19d2546f958baba"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
