# homebrew-tap

bannzai のアプリ・ツールを配布する Homebrew tap。

## 配布物

### PUTS

スクリーンショットやファイルを自分のオブジェクトストレージ (Cloudflare R2 / S3 互換) にアップロードし、AI Agent が読める公開 URL / Markdown に変換する macOS アプリ。同梱 CLI `puts` も一緒にインストールされる。

```sh
brew install --cask bannzai/tap/puts
```

- ホームページ: https://bannzai.github.io/PUTS/

## tap の trust について

Homebrew 6.0 以降、サードパーティ tap の cask はコードを評価する前に trust が必要になった。上のように**完全修飾名 (`bannzai/tap/puts`) で install すると、その cask だけが自動で trust される**ため追加の操作は要らない。

`brew tap` してから短い名前で install する場合は、先に trust する:

```sh
brew tap bannzai/tap
brew trust --cask bannzai/tap/puts
brew install --cask puts
```

`brew trust bannzai/tap` は tap 全体 (今後追加される cask も含む) を trust する。Homebrew は必要な cask だけを trust することを推奨している (https://docs.brew.sh/Tap-Trust)。
