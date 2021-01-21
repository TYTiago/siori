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
| Column                | Type   | Options        |
| --------              | ------ | -----------    |
| email                 | string | null: false    |
| nickname              | string | null: false    |
| encrypted_password    | string | null: false    |

### Association
- has_many : plans
- has_many : comments

## plans テーブル
| Column         | Type    | Options                        |
| ------         | ------  | -----------                    |
| title          | string  | null: false                    |
| user_id        | integer | null: false, foreign_key: true |
| place          | integer | null: false                    |
| list           | text    |                                |
| calendar       | integer | null: false                    |
### Association
- belongs_to :user
- has_many : comments

## comments テーブル
| Column         | Type    | Options                        |
| ------         | ------  | -----------                    |
| user_id        | integer | null: false, foreign_key: true |
| plan_id        | integer | null: false, foreign_key: true |
| text           | integer |                                |

### Association
- belongs_to :user
- belongs_to :plan


アプリケーション名                  Siori

アプリケーション概要                https://secure-hollows-81942.herokuapp.com/

テスト用アカウント                  email:sample@sample.com
                                 Password:sample4649

利用方法                          ログイン後”＋”をクリックする事で予定を立てる事ができます。
                                 記入画面に行く事でシェアやコメントをする事ができます。

目指した課題解決                    日々のスケジュール管理が苦手な人にカレンダーデ表示させる事て分かりやすく予定を確認する事が出来るようにしました。
                                 コロナの影響で少なくなってしまった思い出を形に残せるようにしました。

洗い出した要件
|優先順位（高：3、中：2、低：1）|機能|目的|詳細|ストーリー（ユースケース）|見積もり（所要時間）｜
|:--|--:|:--:|:--|--:|:--:|
| 3 | ログイン機能 | 他者と同じにならないようにする為 | 新規登録、ログイン、ログアウトをする事が出来ます。 | Email/password/nicknameで新規登録Email/passwordでログイン、ログアウトをする事が出来ます。 | 3時間 |
| 3 | カレンダー表示 | 予定などを見やすくする為です。 | カレンダーを表示する事ができます。 | <>をタップする事で一月ずつ移動する事が出来ます。 | 4時間 |
| 3 | image機能 | 思い出や予定の写真を載せれるようにする為です。 | ファイルから選び選ぶ事が出来ます。 | ファイルから選び一枚表示する事が出来ます。 | 2時間 |
| 3 | 共有機能 | 思い出などを共有できるようにする為です。 |  LINE,Facebook,Twitterから共有する事が出来ます。 | LINE,Facebook,Twitterのどれかをタップする事で共有する事が出来ます。 | 2時間 |
| 3 | コメント機能 | 共有した人と繋がれるようにする為です。 | コメントする事が出来ます。 | コメントを書いて送信をタップ事で表示する事が出来ます。 | 3時間 |
| 2 | 削除機能 | 削除できるようにする為です。 | スケジュールを削除する事が出来ます。 | 削除ボタンをタップする事で削除する事が出来ます。 | 1時間 |
| 2 | 編集機能 | 編集できるようにする為です。 | スケジュールを編集する事が出来ます。 | 編集ボタンをタップして編集内容を記入する事で編集する事だ出来ます。 | 2時間 |

実装した機能についてのGIFと説明       思い出写真の他に予定先の地図やお気に入りの写真を貼り付ける事で、分かりやすく忘れにくくしたいと思い写真を貼り付けれるようにしました。
                                 思い出などを家族や友達などに共有し、コメントをする事で繋がれると思い共有とコメントが出来るようにしました。

実装予定の機能                      マイページを作る事でまとめて予定などをまとめて見れるようにしたいです。

データベース設計

## users テーブル
| Column                | Type   | Options        |
| --------              | ------ | -----------    |
| email                 | string | null: false    |
| nickname              | string | null: false    |
| encrypted_password    | string | null: false    |

### Association
- has_many : plans
- has_many : comments

## plans テーブル
| Column         | Type    | Options                        |
| ------         | ------  | -----------                    |
| title          | string  | null: false                    |
| user_id        | integer | null: false, foreign_key: true |
| place          | integer | null: false                    |
| list           | text    |                                |
| calendar       | integer | null: false                    |
### Association
- belongs_to :user
- has_many : comments

## comments テーブル
| Column         | Type    | Options                        |
| ------         | ------  | -----------                    |
| user_id        | integer | null: false, foreign_key: true |
| plan_id        | integer | null: false, foreign_key: true |
| text           | integer |                                |

### Association
- belongs_to :user
- belongs_to :plan