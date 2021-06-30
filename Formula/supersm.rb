class Supersm < Formula
  desc "Super Symlink Manager"
  homepage "https://github.com/peeweep/supersm"
  url "https://github.com/peeweep/supersm/archive/0.5.1.tar.gz"
  sha256 "bdd0c78bce675d7a3629f4af7edc06247ed39dfb30df6f905a6561876fcae10c"
  license "MIT"

  bottle do
    root_url "https://github.com/peeweep/homebrew-taps/releases/download/supersm-0.5.1"
    sha256 cellar: :any, arm64_big_sur: "ec2c73bb521e98c9c519d2c8f301ccb4d7fe9224610b19bfdaee9fdaf281ae3a"
    sha256 cellar: :any, big_sur:       "d70a3dc92b686aafccd8258b7542a77d156c1f6b4548dd3ef967f13d80a7a648"
    sha256 cellar: :any, catalina:      "412a77752207b7fb523c9326338bb6ca5c0da3b9e73c4fac185cba1c178ee9d4"
  end

  depends_on "cmake" => :build
  depends_on "boost"

  patch do
    # Disalbe Statically Link
    url "https://fars.ee/C3kD"
    sha256 "bbdfb7e37a8b49569e7253bbe94d0f73ca890deeac24fdaafe353c5bdfb25de8"
  end

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "true"
  end
end
