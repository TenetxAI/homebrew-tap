class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.0/tenetx_darwin_arm64.tar.gz"
      sha256 "e73b0413dcbd0fc90e0e33577a5c37057665004d236aa28e952b1cec56d32559"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.0/tenetx_darwin_amd64.tar.gz"
      sha256 "6a14efbefc7486b67bf06deff5fbf466d94f0e68d262bfedb2df35c1cca88592"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
