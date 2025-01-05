#!/bin/sh
echo "START Install"

# npmを最新版にアップデート
npm install -g npm@latest

# 仮想環境の作成（既存の場合はスキップ）
if [ ! -d ".venv" ]; then
    python -m venv .venv
fi

# 仮想環境のアクティベート
. .venv/bin/activate

# 仮想環境の作成
uv venv --allow-existing
uv sync

# AWS CDKのグローバルインストール
npm install -g aws-cdk

npm install
npm update

pip install awsume
echo 'alias awsume=". awsume"' >>~/.bashrc

echo "FINISH Install"
