# README

## usersテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| nickname | string     | null: false                    |
| mail     | string     | null: false                    |
| password | string     | null: false                    |
| card_id  | references | null: false, foreign_key: true |

### Association
- has_many :videos
- has_one  :card

## videosテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| item     | string     | null: false                    |
| count    | integer    |                                |
| card_id  | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :category

## categorysテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| genre    | string     | null: false                    |
| item_id  | references | null: false, foreign_key: true |

### Association
- has_many :videos

## cardsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| num      | integer     | null: false                   |
| year     | integer     | null: false                   |
| month    | integer     | null: false                   |
| cvc      | integer     | null: false                   |
| user_id  | references | null: false, foreign_key: true |

### Association
- belongs_to :user


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
