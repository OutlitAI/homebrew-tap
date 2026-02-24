# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "ffc31b9ed3d9ad69f93396686f73ddf4d01863683cc90608346db6a5741729d4"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-darwin-x64.tar.gz"
      sha256 "00bd0fe3976b60940ae12f4318a7892cab15d25840dbf295930764877d2f53d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-arm64.tar.gz"
      sha256 "b1a32ab703003e939e3342ab01bbd165fd963660ea2c5584eaf865d55e0f4cc4"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/v#{version}/outlit-linux-x64.tar.gz"
      sha256 "1d9f68c80ea8755f4a21930c54f8e107a6c12506e70fa43b2cd439cdaf741585"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
