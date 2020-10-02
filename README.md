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
  dive-new
## アプリケーション概要
  これは趣味としてスキューバダイビングを楽しむ人が簡単に記録をつけるためのアプリケーションです。（このアプリケーションを使うにはログインする必要があります）
## URl
  [Dive-new](https://dive-new.herokuapp.com/)
## テスト用アカウント
-メールアドレス: sample@gmail.com
-パスワード:    tarou123
 ## 利用方法
  ログイン後、新規作成をクリックすると記録を保存することができます。保存が完了するとトップページに遷移し、先程保存した情報を閲覧することができます。<br>
  また、ログイン後はDive-newをクリックするとトップページに遷移できるようになります。<br>
  編集ボタンをクリックすると保存した情報の編集を行うことができます。<br>
  削除ボタンをクリックすると保存した情報を削除することができます。<br>
  情報を保存するたびに、トップページにて今まで潜った回数を確認することができます。
 ## 目指した課題解決
  自分がダイビングした記録を簡単に保存、閲覧できるため、自身の成長と思い出を身近に感じることができます。
 ## 洗い出した要件
|優先順位（高：3、中：2、低：1)|機能	          |目的	                   |詳細	               |ストーリー(ユースケース)	            |見積もり   ｜
|-------------------------|----------------|------------------------|--------------------|----------------------------------|----------|
|3|ﾕｰｻﾞｰ管理機能|ﾕｰｻﾞｰによって表示される情報が異なる|deviseのgemを導入する|ﾛｸﾞｲﾝしないとﾄｯﾌﾟﾍﾟｰｼﾞに遷移しない。ﾆｯｸﾈｰﾑやﾒｰﾙｱﾄﾞﾚｽ、ﾊﾟｽﾜｰﾄﾞを入れることでﾕｰｻﾞｰ登録できる|２日|
|3|logs保存機能|新しくﾀﾞｲﾋﾞﾝｸﾞした記録を保存する|new/createｱｸｼｮﾝを用い情報を保存する|深度や気温、時間等を記入することで保存ができる|1日|
|3|情報表示機能|ﾀﾞｲﾋﾞﾝｸﾞした情報を閲覧できるようにする|indexアクションにeachﾒｿｯﾄﾞを用いて全てのﾀﾞｲﾋﾞﾝｸﾞの記録を閲覧する|ﾛｸﾞｲﾝするとﾃﾞｰﾀが存在すれば、記録が閲覧できる|1日|
|2|logs編集機能|保存した情報を編集/削除できるようにする|edit/update/destroyｱｸｼｮﾝを用いて情報を編集/削除する|各ﾎﾞﾀﾝをｸﾘｯｸすることで情報を編集/削除することができる|1日|
 ## 実装した機能についてのGIFと説明

 ## 実装予定の機能

 ## データベース設計
<img width="300" alt="ER図" src="https://gyazo.com/c74547f0e86d4d0464d361919fafe1f7">

## ローカルでの動作方法
