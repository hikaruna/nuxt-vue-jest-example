# syntax = docker/dockerfile:1.0.0-experimental

FROM node

RUN \
  --mount=type=cache,target=/var/cache/apt \
  --mount=type=cache,target=/var/lib/apt \
  apt-get update && apt-get install -y \
vim

# アプリのnode_modules設定
# もとからNODE_PATHが通っている/node_modulesにinstallすることで
# プロジェクトフォルダにnode_modulesを作らずに済ませる
ENV PATH $PATH:/node_modules/.bin
COPY package.json package-lock.json ./
RUN --mount=type=cache,target=/root/.npm npm i

WORKDIR /app
COPY . ./
