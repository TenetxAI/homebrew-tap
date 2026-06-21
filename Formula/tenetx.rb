class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.4/tenetx_darwin_arm64.tar.gz"
      sha256 "7d279d46a788c56a4ce63704a74bb7468027798c3c7397526bc125b62ec4a108"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.4/tenetx_darwin_amd64.tar.gz"
      sha256 "3f707623ff37cb9fd02470a248d094eb732628d53a99f73d2030ba1a5abf771e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.4/tenetx_linux_arm64.tar.gz"
      sha256 "7ce124b3b00b2c3badd81ba39aa907412c8090665e2b78a5b2bf291aeecf3317"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.4/tenetx_linux_amd64.tar.gz"
      sha256 "244270521dd50999eeb2340827217e98bfb64947db6edf21f942bfba7c31f329"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
