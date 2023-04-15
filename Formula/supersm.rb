class Supersm < Formula
  desc "Super Symlink Manager"
  homepage "https://github.com/peeweep/supersm"
  url "https://github.com/peeweep/supersm/archive/0.5.1.tar.gz"
  sha256 "8625a8241f74ac4d928c8fa9d96700bee9cef63cea38194c67bd87c0545e9584"
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
