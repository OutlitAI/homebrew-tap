# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "204afc530be2693601b508066570d120df89485b0c1afc54063fac8ba157a3f9"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-x64.tar.gz"
      sha256 "4893920596ba62a960b8fb4b7c75f27c8ea39a91b99d5324d6998b147c67e5da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-arm64.tar.gz"
      sha256 "553368053874394d006848f2149e9a9bd98d335bf0d78cdd1a363a50fee184bf"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-x64.tar.gz"
      sha256 "85f2ad0dd65bd334cf7e9df900102da6b4c515e9da8d5dfca7eb531991d88bc8"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
