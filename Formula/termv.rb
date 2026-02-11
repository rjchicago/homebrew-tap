class Termv < Formula
  desc "Terminal Velocity - a high-performance terminal-based game"
  homepage "https://github.com/rjchicago/termv"
  url "https://github.com/rjchicago/termv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "593733343daf5cd25905bb3a9c097c94f44a4037e2f353fbf601299f770783a0"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "ncurses"

  def install
    system "make", "VERSION=0.1.0"
    bin.install "termv"
  end

  test do
    assert_match "termv", shell_output("#{bin}/termv --version")
  end
end
