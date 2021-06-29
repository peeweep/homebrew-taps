cask "zhumu" do
  version :latest
  sha256 :no_check

  url "https://downloads.zhumu.me/client/latest/zhumu.pkg", verified: "zhumu.me"
  name "zhumu"
  desc "Video Conferencing and Web Conferencing Service"
  homepage "https://zhumu.com/download"

  depends_on macos: ">= :sierra"

  pkg "zhumu.pkg"

  uninstall pkgutil: [
    "com.suirui.pkg.zhumu",
    "com.suirui.zhumuplugin",
    "zoom.us.ZoomAudioDevice",
  ]
end
