require "formula"

class Bt < Formula
  desc "BT CLI Tool for Apple Silicon"
  homepage "https://github.com/bounser-org/bt"
  url "https://github.com/bounser-org/bt/releases/download/v1.2/bt-darwin-arm64-v1.2.tar.gz"
  sha256 "21177e4b96a7d0a7cb15d842648761472ca85aaab448757919cd6e26fcd64ba7"
  head "https://github.com/bounser-org/bt.git"

  def install
    bin.install "bt"
  end

  # Homebrew requires tests.
  test do
    assert_match "v1.2", shell_output("#{bin}/bt version")
  end
end
