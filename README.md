### その他詳細はwikiに記載

https://github.com/Hashimoto-Noriaki/rails_netflix_app/wiki

## 環境構築(docker)
### ビルド
```
docker compose build
```

### 起動
```
docker compose up -d
```

### サーバー起動
```
 docker compose run web rails s
 docker compose run web rails server
```
http://127.0.0.1:3000/

### サーバー停止
```
docker compose down
```

### DB作成とマイグレーション実行
```
docker compose run web bundle exec rails db:create
```

### bundle install
```
docker compose run web bundle install
```

### Rspec
```
bundle exec rspec
```

### Rubocop
```
bundle exec rubocop
```

### インフラ環境、デプロイ環境GCP
クラウド
- CloudRun
- CloudRunJobs
- CloudBuild
- ArtifactRegistry

### なぜこの構成か
月10円とかで運用できて、経費削減できるため

### Cloud Run
アプリのデプロイ先 (Dockerイメージを元に実行)

### CloudRunJobs
バッチ処理用のアプリをデプロイして定期実行するもの(Dockerイメージを元に実行)

### ArtifactRegistry
Dockerのコンテナイメージの保管先 (このイメージを元にCloudRunやCloudRunJobsにデプロイする)

### CloudBuild
自動デプロイ (Githubのmainにマージしたら自動でイメージを作ってArtifactRegistryに保管してくれて、その後CloudRunやCloudRunJobsに自動でデプロイしてくれる)

### DB
supabase

