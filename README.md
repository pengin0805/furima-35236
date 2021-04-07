# テーブル設計

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birth-year         | string | null: false |
| birth-month        | string | null: false |
| birth-date         | string | null: false |

### Association

- has_many :items
- has_one :order

## items テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| image            | text       | null: false                    |
| item-name        | string     | null: false                    |
| item-info        | text       | null: false                    |
| category         | string     | null: false                    |
| condition        | string     | null: false                    |
| shipping-fee     | string     | null: false                    | 
| shipping-area    | string     | null: false                    |
| shipping-day     | string     | null: false                    |
| price            | string     | null: false                    |
| user             | references | null: false, foreign_key: true |
| order            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :order

## orders テーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| credit-number         | string     | null: false                    |
| credit-exp-month      | string     | null: false                    |
| credit-exp-year       | string     | null: false                    |
| credit-cvc            | string     | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- has_many :items
- belongs_to :user
- has_one :address

## addresses テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal-code      | string     | null: false                    |
| prefecture       | string     | null: false                    |
| city             | string     | null: false                    |
| address          | string     | null: false                    |
| building         | string     |                                | 
| phone-number     | string     | null: false                    |
| order            | references | null: false, foreign_key: true |

### Association

- belongs_to :order
