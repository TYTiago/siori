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


READMEの記述方法
アプリケーションのREADMEに以下の内容を記述しましょう。

記述すること	備考
アプリケーション名	
アプリケーション概要	このアプリケーションでできることを記述しましょう。
URL	デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。
テスト用アカウント	ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。
利用方法	このアプリケーションの利用方法を説明しましょう。
目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書きましょう。
洗い出した要件	スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。
実装した機能についてのGIFと説明	実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。
実装予定の機能	洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。
データベース設計	ER図等を添付しましょう。
ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。




# テーブル設計

## users テーブル
| Column                | Type   | Options        |
| --------              | ------ | -----------    |
| email                 | string | null: false    |
| nickname              | string | null: false    |
| encrypted_password    | string | null: false    |

### Association
- has_many : plans
- has_many : messages

## plans テーブル
| Column         | Type    | Options                        |
| ------         | ------  | -----------                    |
| title          | string  | null: false                    |
| user_id        | integer | null: false, foreign_key: true |
| time_id        | integer | null: false                    |
| place          | integer | null: false                    |
| list           | text    |                                |
| calendar       | integer | null: false                    |
### Association
- belongs_to :user
- has_many : messages

## messages テーブル
| Column         | Type    | Options                        |
| ------         | ------  | -----------                    |
| user_id        | integer | null: false, foreign_key: true |
| plan_id        | integer | null: false, foreign_key: true |
| text           | integer |                                |

### Association
- belongs_to :user
- belongs_to :plan