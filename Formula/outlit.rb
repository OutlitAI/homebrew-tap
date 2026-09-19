# typed: false
# frozen_string_literal: true

class Outlit < Formula
  desc "Outlit CLI — customer intelligence from the terminal"
  homepage "https://outlit.ai"
  version "3.2.0"

  on_macos do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-arm64.tar.gz"
      sha256 "716cbdd4160001fa9cb8b5f3c80983c926ab6cde70df9b39d1829c773e381b2f"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-darwin-x64.tar.gz"
      sha256 "f21ebfa73367aaccaaeb1944c53ad8ada594a8b0e3bc7f824862dbca3e750cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-arm64.tar.gz"
      sha256 "864296907c589c777ebc095dedf8e604969a9a889cd2e4457a649dcd8d7023c7"
    end

    on_intel do
      url "https://github.com/OutlitAI/homebrew-tap/releases/download/#{version}/outlit-linux-x64.tar.gz"
      sha256 "18b5fcd65c9112b23e7542b9971e525a782151a8e2b22b579686a6c3a0be8ba6"
    end
  end

  def install
    bin.install "outlit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlit --version")
  end
end
