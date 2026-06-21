class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.1/tenetx_darwin_arm64.tar.gz"
      sha256 "b33c6ca249b85f55ecc3b8dc2df69983aae162ab65507337db1560744ae04efb"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.1/tenetx_darwin_amd64.tar.gz"
      sha256 "9a471f43ce6c2e95f5014cb27726f0f0d7188ed124c992f5c7ff3698d58bd703"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
