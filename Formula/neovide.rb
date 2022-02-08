class Neovide < Formula
  desc "No Nonsense Neovim Client in Rust"
  homepage "https://github.com/neovide/neovide"
  url "https://github.com/neovide/neovide/archive/tags/0.7.0.tar.gz"
  sha256 "32b68b969cabe4d33c1974b21cc5324a86fe52bcff9645a7c9a53ecd69d9d535"
  license "MIT"
  head "https://github.com/neovide/neovide.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/peeweep/taps"
    rebuild 2
    sha256 cellar: :any_skip_relocation, big_sur: "1f7f31f252c99c38d150f17732b4bc35fd3a4b07481a18d7f6f6643e40f4b92f"
  end

  depends_on "cmake" => :build
  depends_on "rust" => :build
  depends_on "neovim"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/neovide"
  end

  test do
    system "true"
  end
end
