# ベースイメージを指定
FROM ruby:3.2.2

# アプリケーションディレクトリを作成
WORKDIR /app

# アプリケーションコードをコピー
COPY ./myapp /app

RUN bundle install

# アプリケーションを実行
CMD ["bundle", "exec", "hanami", "server"]
