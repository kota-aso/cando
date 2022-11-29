# テーブル設計

## users テーブル

| Column             | Type     | Options                    |
| ------------------ | -------- | -------------------------- |
| nickname           | string   | null: false                |
| email              | string   | null: false, unique: true	 |
| encrypted_password | string   | null: false                |
| sports             | string   | null: false                |
| skill              | string   | null: false                |
| achievement        | text     | null: false                |



### Association

- has_many :candos
- has_many :wants

## candos テーブル

| Column      | Type       | Options                          |
| ----------- | ---------- | -------------------------------- |
| title       | string     | null: false                      |
| subtitle    | text       | null: false                      |
| date        | integer    | null: false                      |
| price       | integer    | null: false                      |
| user        | references | null: false, foreign_key: true	  |

### Association

- has_one :want
- belongs_to :user

## wants テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| cando  | references | null: false, foreign_key: true |

### Association

- belongs_to :cando
- belongs_to :user


## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| cando  | references | null: false, foreign_key: true |


### Association

- belongs_to :cando
