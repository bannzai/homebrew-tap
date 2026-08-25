cask "puts" do
  version "1.0"
  sha256 "dbd04350feeb04fbed39696b03cdde3972098ed12ba0df2c90e3e30df6b31ef8"

  url "https://pub-f9fad31b34b04546bc65bfaf217a9070.r2.dev/PUTS-#{version}.dmg"
  name "PUTS"
  desc "Turn screenshots into URLs AI agents can read"
  homepage "https://bannzai.github.io/PUTS/"

  # PUTS.app の MACOSX_DEPLOYMENT_TARGET (26.0 = Tahoe) に合わせた最小バージョン
  depends_on macos: :tahoe

  app "PUTS.app"
  # CLI は app 同梱の署名済みバイナリを symlink する。単体配布のバイナリは app の Keychain・履歴を読めないため
  # (ADR 0019: https://github.com/bannzai/PUTS/blob/main/documents/adr/0019-embed-cli-in-app-bundle-for-keychain-and-history.md)
  binary "#{appdir}/PUTS.app/Contents/Helpers/puts.app/Contents/MacOS/puts"

  zap trash: [
    "~/.config/puts",
    "~/.local/share/puts",
    "~/Library/Application Scripts/com.bannzai.PUTS",
    "~/Library/Containers/com.bannzai.PUTS",
  ]
end
