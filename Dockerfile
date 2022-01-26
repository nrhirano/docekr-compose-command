# Go 1.17.0 versionを取得
FROM golang:1.17.0-alpine3.14
# アップデートとgitのインストール
RUN apk update && apk add git
# appディレクトリの作成
RUN mkdir /go/src/app
# ワーキングディレクトリの設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app