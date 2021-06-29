class Supersm < Formula
  desc "Super Symlink Manager"
  homepage "https://github.com/peeweep/supersm"
  url "https://github.com/peeweep/supersm/archive/0.5.1.tar.gz"
  sha256 "bdd0c78bce675d7a3629f4af7edc06247ed39dfb30df6f905a6561876fcae10c"
  license "MIT"

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
