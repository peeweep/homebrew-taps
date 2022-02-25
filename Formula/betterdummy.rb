class Betterdummy < Formula
  desc "Dummy Display for Apple Silicon Macs to Have Custom HiDPI Resolutions"
  homepage "https://github.com/waydabber/BetterDummy"
  url "https://github.com/waydabber/BetterDummy/archive/v1.0.13.tar.gz"
  sha256 "2fec0d4abc40e62354fefe673e5b02a694ac272e205cf58c2c3e0f10713ef5a5"
  license "MIT"
  head "https://github.com/waydabber/BetterDummy", branch: "opensource"

  livecheck do
    url :homepage
  end

  patch do
    url "https://github.com/waydabber/BetterDummy/compare/v1.0.13...e334d0d2f60e3188ea4b578ea248cfa1361b8032.patch"
    sha256 "069575745eb87d14cac9426d3be073af8a8c8226c960b0b5b35b9d5096e8b2ef"
  end

  depends_on xcode: :build
  depends_on :macos

  def install
    xcodebuild "-target", "BetterDummyHelper", "-project", "BetterDummy.xcodeproj", "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO"
    xcodebuild "-target", "BetterDummy", "-project", "BetterDummy.xcodeproj", "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO"
    bin.install "build/Release/BetterDummy.app"
  end

  test do
    system "true"
  end
end
