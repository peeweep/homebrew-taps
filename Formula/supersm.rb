class Supersm < Formula
  desc "Super Symlink Manager"
  homepage "https://codeberg.org/peeweep/supersm"
  url "https://codeberg.org/peeweep/supersm/archive/0.5.2.tar.gz"
  sha256 "85b051c80f6e1e0b43664e3a7b849c91922c808223b6d9427a0e027f9e5bb48d"
  license "MIT"
  revision 1

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_match "#{version} \n", shell_output("#{bin}/supersm --version", 1)
  end
end
