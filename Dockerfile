# Python公式の軽量なイメージをベースにする
FROM python:3.10-slim

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピーしてインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリのコードをコピー
COPY . .

# 外部公開するポート番号を指定
EXPOSE 8080

# アプリを起動
CMD ["python", "app.py"]