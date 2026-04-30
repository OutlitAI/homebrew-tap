# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "1.7.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "e68336dc4f7cccba729a33e9700f980acbde3f3b4f68d32524b7cdcc2cb6834b"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-x64.tar.gz"
      sha256 "58bcb94fa60e3c51a1b326180b9c9036bc0ceb44354d775cfc2681e33b55f1c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-arm64.tar.gz"
      sha256 "7607c8e3ba3ad043113d0e12724243659043c91162e70db410bc97104d53b8bd"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-x64.tar.gz"
      sha256 "f53b01006aca3ec41082e03a41925352446400d736e00d2bb4963cc5f54fcea3"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
