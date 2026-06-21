class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.6/tenetx_darwin_arm64.tar.gz"
      sha256 "ba235656c6ad616cb5d6c93e02572d730cf5dfeedfb3ac86c976f9d69b217188"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.6/tenetx_darwin_amd64.tar.gz"
      sha256 "0575a9727022d1b40464552379e581320c074a8af173e5803cfb3d9958106fcf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.6/tenetx_linux_arm64.tar.gz"
      sha256 "5da67bc409765073d14880384b4d3b12cce7a637c62814d34a3dfc1c03ae8c08"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.6/tenetx_linux_amd64.tar.gz"
      sha256 "b129f9cbb7c37094c3647b160dfc4cc2e5078c441aae0123ec4577d9346638f0"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
