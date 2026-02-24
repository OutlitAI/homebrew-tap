# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "d45fd965a467b8f13e06ee81cba60abf7824c0eceddfc1ee48c0aa201f3e60aa"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-x64.tar.gz"
      sha256 "0fb3073f530c0872100e8b55572e0621609b59fdd982de8b0ac15aeb302bd451"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-arm64.tar.gz"
      sha256 "42e93d4a4a75bbb4bfe7b4518e010ec6a818681b9210882cddc881aa1da6f8e6"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-x64.tar.gz"
      sha256 "74f0cd6f79b6a56df100c38e404f23a0bc921a6f3c1f4f927034b69ec72635bf"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
