class Reklawdbox < Formula
  desc "MCP server for Rekordbox library management"
  homepage "https://reklawdbox.com"
  license "MIT"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/ryan-voitiskis/reklawdbox/releases/download/v#{version}/reklawdbox-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c6e07796e597c9ae83e20af841d99207764c979559483fc16a4236c7eea582c8"
    end
  end

  def install
    bin.install "reklawdbox"
  end

  test do
    assert_match "reklawdbox #{version}", shell_output("#{bin}/reklawdbox --version")
  end
end
