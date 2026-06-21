class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.3/tenetx_darwin_arm64.tar.gz"
      sha256 "622d766af4596ee55282bb5f93b9547786c23fefa7a15485b6070efa98845885"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.3/tenetx_darwin_amd64.tar.gz"
      sha256 "92415834ce705bf126ffd6ad17865217d5c915af496930b2a8c5b6b54f6fb651"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.3/tenetx_linux_arm64.tar.gz"
      sha256 "9db51b57703d6151085e6dd8a0a91ec7fe269fb4469e3a73f50696798c1e799d"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.3/tenetx_linux_amd64.tar.gz"
      sha256 "66d491974e177b64dd0db6198a906b9fdd2abb4a28b469e4dddcaf3cd78ef9b8"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
