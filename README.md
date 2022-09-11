# automation-lt-vol-8
自動化大好きエンジニアLT会 - vol.8 スライドと `Dagger` サンプル。

`ci`ディレクトリに Dagger のサンプル、`slide`ディレクトリに Slidev のスライド用ファイルを配置しています。

## 実行環境
次の環境で動作していることを確認しています。

VSCode ＋ Remote - Containers（拡張機能） ＋ Docker Desktop on Mac

`.devcontainer`ディレクトリも配置しているので、上記環境があれば再現できます。

## ローカルで Dagger を実行する方法
リモートコンテナ内で、次のコマンドを実行すると、ci ディレクトリと同階層に HTML ファイルが入っている`dist`ディレクトリが作成される。

```bash
cd ci
dagger project init
dagger project update
dagger do build
```

簡易的な Web サーバを起動することでスライドをブラウザで表示できる。

例えば、以下のコマンドを実行すると、`http://localhost:8000`でスライドを表示できる。

```bash
cd dist
python -m http.server
```

## ローカルで Slidev CLI を実行する方法
リモートコンテナには、予め Slidev CLI をインストールしています。

次のコマンドで、スライドを表示できる。

```bash
cd slide
slidev
```
