FROM node

RUN apt-get update && apt-get install -y \
vim

# アプリのnode_modules設定
# もとからNODE_PATHが通っている/node_modulesにinstallすることで
# プロジェクトフォルダにnode_modulesを作らずに済ませる
ENV PATH $PATH:/node_modules/.bin
COPY package.json package-lock.json ./
RUN npm i

WORKDIR /app
COPY . ./
