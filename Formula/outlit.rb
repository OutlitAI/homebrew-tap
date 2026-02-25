# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "73880890a05e1f398051b7e05d65e4b27cebd5fa773f7bef641505b3c465b8e7"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-x64.tar.gz"
      sha256 "7e148b68e7b7b9a6b6164ee573cbc2c428e98a87db0673cdd9cda0b2af4d0a8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-arm64.tar.gz"
      sha256 "e48238679be055bcb209ebd31628dc6d2a303a3ab4e081f0cace28ec143f55dc"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-x64.tar.gz"
      sha256 "a07f5b0bd6115e681540cd9353e2fe05f559f7e2e4b96546b4bd662e3c53fe68"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
