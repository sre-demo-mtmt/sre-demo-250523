# Python公式の軽量なイメージをベースにする
FROM python:3.10-slim

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピーしてインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリのコードをコピー
COPY . .

# アプリを起動
CMD ["python", "app.py"]