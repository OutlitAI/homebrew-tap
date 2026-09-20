# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "3.2.1"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "407cdf9f329d0f807448c44ab3a9a79b734ea4a336f9ef345982bcc57ae0f8fe"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-x64.tar.gz"
      sha256 "4c39be194a30ad60cfa5fea0c77b1da386c70ddd2fd1fea1f7d7f982833e9a35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-arm64.tar.gz"
      sha256 "9ec593393f80ea60c9f94e61e92cf695bcab3fddb011d3957573150d1fbd2a6b"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-x64.tar.gz"
      sha256 "46ad0731abb2942478ab4460d17db7b4799251be5050425bddc2a841f4cb0d9a"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
