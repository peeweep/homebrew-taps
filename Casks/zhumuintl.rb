cask "zhumuintl" do
  version :latest
  sha256 :no_check

  url "https://d.zhumu.me/client/latest/zhumuintl.pkg", verified: "zhumu.me"
  name "Zhumu intl"
  desc "Video Conferencing and Web Conferencing Service"
  homepage "https://zhumu.com/download-intl"

  depends_on macos: ">= :sierra"

  pkg "zhumuintl.pkg"

  uninstall pkgutil: [
    "com.suirui.pkg.zhumuintl",
  ]
end
