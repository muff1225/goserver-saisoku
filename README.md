# Launch up go server at the fastest.

## setup
### 必要なファイル
1. golang https://github.com/golang/go のインストール.
   golangが初めての場合は https://go-tour-jp.appspot.com/welcome/1 あたりのサンプルコードを読む.
2. EB CLI https://docs.aws.amazon.com/ja_jp/elasticbeanstalk/latest/dg/eb-cli3.html のインストール

### ローカルでコードを動かすには
1. ```go run application.go```
1. ブラウザでアクセス https://localhost:5000
1. `helloworld`がブラウザに表示されていればオッケー

### AWS ElasticBeansTalkにデプロイするには
1. `deploy.sh`を実行