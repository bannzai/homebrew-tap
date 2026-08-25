cask "puts" do
  version "1.0"
  sha256 "dbd04350feeb04fbed39696b03cdde3972098ed12ba0df2c90e3e30df6b31ef8"

  url "https://pub-f9fad31b34b04546bc65bfaf217a9070.r2.dev/PUTS-#{version}.dmg"
  name "PUTS"
  desc "Turn screenshots into URLs AI agents can read"
  homepage "https://bannzai.github.io/PUTS/"

  depends_on macos: ">= :tahoe"

  app "PUTS.app"
  # 同梱 CLI (ADR 0019: app と同じ署名で app の Keychain・履歴を読むため、formula 単体配布ではなく同梱バイナリへの symlink で配る)
  binary "#{appdir}/PUTS.app/Contents/Helpers/puts.app/Contents/MacOS/puts"
end
