# TimeRecordアプリ

## 目的

スキル習得・向上のためのモチベーションアップ

## 概要

スキル習得・向上のために費やした時間の記録と共有ができるアプリ

## 使い方

1. サインアップ
2. 個人ページで、習得したいスキルを登録
3. 個人ページで、各スキルに対して費やした時間を記録
4. ユーザー一覧ページで他の人のスキルアップ時間を確認
5. 他の人の個人ページも閲覧可能


## ローカル環境での利用方法

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ bundle install --without production
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```
