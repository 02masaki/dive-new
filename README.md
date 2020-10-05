# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :logs

## logs テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| suit         | string     | null: false                    |
| min          | integer    | null: false                    |
| depth        | integer    | null: false                    |
| place        | text       | null: false                    |
| transparency | integer    | null: false                    |
| temperature  | integer    | null: false                    |
| date         | date       | null: false                    |
| impression   | text       | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association
- belongs_to :user


## アプリケーション名
  Dive-new
## アプリケーション概要
  これは趣味としてスキューバダイビングを楽しむ人が簡単に記録をつけるためのアプリケーションです。（このアプリケーションを使うにはログインする必要があります）
## URl
  [Dive-new](https://dive-new.herokuapp.com/)
## テスト用アカウント
- メールアドレス: sample@gmail.com
- パスワード:    tarou123
## 利用方法
  ログイン後、新規作成をクリックすると記録を保存することができます。保存が完了するとトップページに遷移し、先程保存した情報を閲覧することができます。<br>
  また、ログイン後はDive-newをクリックするとトップページに遷移できるようになります。<br>
  編集ボタンをクリックすると保存した情報の編集を行うことができます。<br>
  削除ボタンをクリックすると保存した情報を削除することができます。<br>
  情報を保存するたびに、トップページにて今まで潜った回数を確認することができます。
## 目指した課題解決
  自分の趣味であるスキューバダイビングの記録は紙に記入することが多く、ノート類を持ち運ばなければなりません。スキューバダイビングは器材が多く持ち運びが大変であるため、少しでも荷物を軽くしたいという気持ちから、インターネットに接続すればどこでも使えるアプリケーションを作成すればいいのではないかと考え、こちらのアプリケーションを作成しま
  した。
## 要件
|優先順位（高：3、中：2、低：1)|機能	          |目的	                   |詳細	               |ストーリー(ユースケース)	            |見積もり   ｜
|-------------------------|----------------|------------------------|--------------------|----------------------------------|----------|
|3|ﾕｰｻﾞｰ管理機能|ﾕｰｻﾞｰによって表示される記録が異なる|deviseのgemを導入する|ﾛｸﾞｲﾝしないとﾄｯﾌﾟﾍﾟｰｼﾞに遷移しない。ﾆｯｸﾈｰﾑやﾒｰﾙｱﾄﾞﾚｽ、ﾊﾟｽﾜｰﾄﾞを入れることでﾕｰｻﾞｰ登録できる|２日|
|3|logs保存機能|新しくﾀﾞｲﾋﾞﾝｸﾞした記録を保存する|new/createｱｸｼｮﾝを用いて記録を保存する|深度や気温、時間等を入力することで保存ができる|1日|
|3|情報表示機能|ﾀﾞｲﾋﾞﾝｸﾞした記録を閲覧できるようにする|indexアクションにeachﾒｿｯﾄﾞを用いて全てのﾀﾞｲﾋﾞﾝｸﾞの記録を閲覧する|ﾛｸﾞｲﾝするとﾃﾞｰﾀが存在すれば、記録が閲覧できる|1日|
|2|logs編集機能|保存した記録を編集/削除できるようにする|edit/update/destroyｱｸｼｮﾝを用いて記録を編集/削除する|各ﾎﾞﾀﾝをｸﾘｯｸすることで記録を編集/削除することができる|1日|
|2|logs検索機能|保存した記録を検索できるようにする|searchｱｸｼｮﾝを用いて検索機能を実装する|検索ﾌｫｰﾑに値を入力することで記録を検索できる|1日|
|1|user情報編集機能|保存したユーザーの情報を編集できるようにする|deviseのeditアクションを用いて実装する|ﾕｰｻﾞｰ名をクリックすると編集ページが開き、編集することができる|1日|
## 実装した機能についてのGIFと説明
### ログイン機能
登録したメールアドレスとパスワードを入力することでログインできる
<img width="500" alt="ログイン機能" src="app/assets/images/ログイン機能.mp4">

### 新規登録機能
ニックネームとメールアドレス、パスワードを入力することで登録できる
<img width="500" alt="ユーザー登録機能" src="https://i.gyazo.com/d659babc1ec633a1212c56e962d20bf5.mp4">

### 新規記録作成機能
各項目を埋めることで保存できる。また、記録を保存するごとにトップページで潜った回数が表示される
<img width="500" alt="記録作成機能" src="https://i.gyazo.com/3545bd3b52dee3f51b45509ed8232207.mp4">

### 記録編集機能
トップページで編集ボタンをクリックし、編集ページが開き変更事項を記載することで情報を変更できる
<img width="500" alt="記録編集機能" src="https://i.gyazo.com/518a82f03f4930bdc6a536d507c168a3.mp4">

### 記録削除機能
トップページで削除ボタンをクリックすると、該当の記録が削除できる
<img width="500" alt="記録削除機能" src="https://i.gyazo.com/7420a4ebbee9e277e55d85e66af76889.mp4">

### ログアウト機能
ログアウトをクリックするとログアウトし、ログイン画面に遷移する
<img width="500" alt="ログアウト機能" src="https://i.gyazo.com/968c197476d2f027b7a25b82e89421ff.mp4">

## 実装予定の機能
- logs検索機能
- user編集機能
## データベース設計
<img width="500" alt="ER図" src="https://i.gyazo.com/c74547f0e86d4d0464d361919fafe1f7.png">

## ローカルでの動作方法
### Rubyのバージョン
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-darwin19]
### Railsのバージョン
Rails 6.0.3.3
### 実行コマンド
- git clone git@github.com:02masaki/dive-new.git
- bundle install
- rails db:create
- rails db:migrate
- rails s