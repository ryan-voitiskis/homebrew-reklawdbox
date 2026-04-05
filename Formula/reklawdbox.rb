class Reklawdbox < Formula
  desc "MCP server for Rekordbox library management"
  homepage "https://reklawdbox.com"
  license "MIT"
  version "0.25.1"

  on_macos do
    on_arm do
      url "https://github.com/ryan-voitiskis/reklawdbox/releases/download/v#{version}/reklawdbox-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1eabf5ab455af70e90db40b2ebfecb5d2ea94b9a04aeec7e04743bcc02f97960"
    end
  end

  def install
    bin.install "reklawdbox"
  end

  test do
    assert_match "reklawdbox #{version}", shell_output("#{bin}/reklawdbox --version")
  end
end
