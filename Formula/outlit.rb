# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "3.1.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "87b4363e7166f557e5eb93d9873d3b3f7397ab50aae05d7362b4b376185e277e"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-x64.tar.gz"
      sha256 "5ccc51908d6a3c1a9ce742434e5cc157df9c891b11bc09e8f4f8d14a3a0e0c67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-arm64.tar.gz"
      sha256 "3553ca30474815d96004d2739ab5f7dae318156a0aef7460036a931a0f0fd47d"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-x64.tar.gz"
      sha256 "2c729e6dcda5cc054d48d2195759659cf7e08d1d86ebcc907143b45cc2a0ac4b"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
