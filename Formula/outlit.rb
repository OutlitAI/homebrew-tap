# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "1.9.2"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "b5b9357bba36e2b66ccacc420c56a6ef6892a66e4d95a955306bdf575d9b168c"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-x64.tar.gz"
      sha256 "30144e58f6d1bf7fb81a4cfd60783cb4de42ce89ea9b0731755536a1da7fecbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-arm64.tar.gz"
      sha256 "f7dca8c36861520ec315276a754d9e6947ac9dec9c8f682a02a6039e0ffc00c0"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-x64.tar.gz"
      sha256 "4b9c6507c1d44fd8764e67c121d6ca6dbb0bf284afe05688ea9ba9fabf537508"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
