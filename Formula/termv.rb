class Termv < Formula
  desc "Terminal Velocity - a high-performance terminal-based game"
  homepage "https://github.com/rjchicago/termv"
  url "https://github.com/rjchicago/termv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3cc4069a35e6e3f2d6ca0528850c2280d0bd65105440104526697db85acea648"
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
