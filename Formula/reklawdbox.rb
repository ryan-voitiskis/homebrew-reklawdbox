class Reklawdbox < Formula
  desc "MCP server for Rekordbox library management"
  homepage "https://reklawdbox.com"
  license "MIT"
  version "0.24.0"

  on_macos do
    on_arm do
      url "https://github.com/ryan-voitiskis/reklawdbox/releases/download/v#{version}/reklawdbox-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1d4c02fe19be32f740ee5ec11f50fdc43e0534b1b9ed3a437dd95305aa596ee2"
    end
  end

  def install
    bin.install "reklawdbox"
  end

  test do
    assert_match "reklawdbox #{version}", shell_output("#{bin}/reklawdbox --version")
  end
end
