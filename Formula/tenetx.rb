class Tenetx < Formula
  desc "Secure your AI coding agents — the TenetX CLI"
  homepage "https://tenetx.ai"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.5/tenetx_darwin_arm64.tar.gz"
      sha256 "315924be89772c9720c30242493a6213d83e7e4cef2b713525b2190513c4df97"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.5/tenetx_darwin_amd64.tar.gz"
      sha256 "2ee1ace5b5a0db6caceb19ebc886ec4b0037424eaf8a2212a6f21c6ad402bc0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.5/tenetx_linux_arm64.tar.gz"
      sha256 "dee847e06ec89d834506679c968db30bffd94ec74bcd3c44aebdd2fe79d8faa3"
    else
      url "https://github.com/TenetxAI/homebrew-tap/releases/download/cli-v0.4.5/tenetx_linux_amd64.tar.gz"
      sha256 "c880168b8ca73d2f3cc4a686c803bf3da0b4e960873e5ca186f7f1f433207d62"
    end
  end

  def install
    bin.install "tenetx"
  end

  test do
    system "#{bin}/tenetx", "version"
  end
end
