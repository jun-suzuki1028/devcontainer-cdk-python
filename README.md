
## 個人用開発環境devcontainer

個人用によく使うPython、CDK(Typescript)環境構築用のdevcontainerです。

- Python
- Node.js
- AWS CDK
- Git

## 事前準備

VSCodeのインストールと、Devcontainerの拡張機能をインストールしておきます。
https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

## 利用方法

リポジトリを作成する際にテンプレートとして本リポジトリを選択します。。
リポジトリをcloneしてvscodeからコンテナで起動してください。

### CDKを使う場合

CDKはすでにインストールされているため、インフラ用のフォルダを作成してcdk initします。

```bash
mkdir infra
cd infra
cdk init app --language typescript
```

### python

poeを使ったタスクランナーを定義指定しています。詳細は`pyproject.toml`参照してください。

`poe build`でruffによる整形とチェック、mypyの型チェック、テストをまとめて実行可能です。

### Amazon Qの設定
READMEを自動作成してくれる機能があるため、とりあえずAmazon Qもデフォルトでインストール対象としている。サインインが必要なため利用する際は下のバーからAmazon Qをクリックしてサインインすること。


## 参考

- [Dev Container を使ってステップバイステップで作る Python アプリケーション開発環境 \- 電通総研 テックブログ](https://tech.dentsusoken.com/entry/2023/05/02/Dev_Container%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E3%82%B9%E3%83%86%E3%83%83%E3%83%97%E3%83%90%E3%82%A4%E3%82%B9%E3%83%86%E3%83%83%E3%83%97%E3%81%A7%E4%BD%9C%E3%82%8BPython%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1#Python%E4%BB%AE%E6%83%B3%E7%92%B0%E5%A2%83%E3%81%AE%E6%A7%8B%E7%AF%89)
- [AWS CDKとPythonでの開発環境をDevcontainerで作成 \| DevelopersIO](https://dev.classmethod.jp/articles/aws-cdk-python-devcontainer/)