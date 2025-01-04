#!/bin/sh
echo "START Install"

# npmを最新版にアップデート
npm install -g npm@latest

# 仮想環境の作成
uv venv --allow-existing
# dev グループを含めて依存関係をインストール
uv sync

# AWS CDKのグローバルインストール
npm install -g aws-cdk

npm install

pip install awsume
echo 'alias awsume=". awsume"' >>~/.bashrc

echo "FINISH Install"
