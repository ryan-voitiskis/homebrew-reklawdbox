class Reklawdbox < Formula
  desc "MCP server for Rekordbox library management"
  homepage "https://reklawdbox.com"
  license "MIT"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://github.com/ryan-voitiskis/reklawdbox/releases/download/v#{version}/reklawdbox-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "616a6629a213cf0507b0cf24ed5700433b30b59ce5229a2406131819661c4d7e"
    end
  end

  def install
    bin.install "reklawdbox"
  end

  test do
    assert_match "reklawdbox #{version}", shell_output("#{bin}/reklawdbox --version")
  end
end
