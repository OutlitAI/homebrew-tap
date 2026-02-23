# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_X64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
