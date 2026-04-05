class Reklawdbox < Formula
  desc "MCP server for Rekordbox library management"
  homepage "https://reklawdbox.com"
  license "MIT"
  version "0.24.1"

  on_macos do
    on_arm do
      url "https://github.com/ryan-voitiskis/reklawdbox/releases/download/v#{version}/reklawdbox-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "24bdfd111c5f4f9a20bff3054d843381924f1463094837ac0fbbe43fa5f19f8f"
    end
  end

  def install
    bin.install "reklawdbox"
  end

  test do
    assert_match "reklawdbox #{version}", shell_output("#{bin}/reklawdbox --version")
  end
end
