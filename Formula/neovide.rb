class Neovide < Formula
  desc "No Nonsense Neovim Client in Rust"
  homepage "https://github.com/neovide/neovide"
  url "https://github.com/neovide/neovide/archive/tags/0.7.0.tar.gz"
  version "0.7.0"
  sha256 "fe3ac9852a0c7177b7715993fe56b14de53e4ebca7c7bd987567e07fdf4c8d03"
  license "MIT"

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
