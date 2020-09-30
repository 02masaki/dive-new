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
| year         | integer    | null: false                    |
| month        | integer    | null: false                    |
| date         | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |

## Association
- belongs_to :user

 ## アプリケーション名
  dive-new
## アプリケーション概要
  これは趣味としてスキューバダイビングを楽しむ人が簡単に記録をつけられたり、ダイビングの計画を立てるためのアプリケーションです。（このアプリケーションを使うにはログインする必要があります）
## URl

## テスト用アカウント

 ## 利用方法

 ## 目指した課題解決

 ## 洗い出した要件

 ## 実装した機能についてのGIFと説明

 ## 実装予定の機能

 ## データベース設計

 ## ローカルでの動作方法
