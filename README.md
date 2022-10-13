## アプリケーション概要
![logo](https://user-images.githubusercontent.com/111602501/194476696-30ffc79c-cebd-4ef5-ba5f-5e5e85ccf709.png)
### アプリケーション名
Calendar-app
### コンセプト
シンプルなカレンダー  
簡単に予定を追加、今後の予定を一覧で確認できる

## URL
https://calendar-app-38380.herokuapp.com/

## テスト用アカウント
  - テスト１
    - メールアドレス名：test@mail
    - パスワード：test11
  - テスト2
    - メールアドレス：test2@mail
    - パスワード：test22

## 機能一覧
- ユーザー管理機能
	- 新規登録機能
	- ログイン機能
- 投稿機能
  - 予定の追加
  - 予定の編集・削除

## 利用方法
**■ 権限** <br>
- ログアウトユーザー
  - ログイン/新規登録
  - カレンダー表示

- ログインユーザー
  - ログアウト/予定追加
  - 予定の編集・削除
  - 日別の予定表示
  - 未来日の予定一覧表示

**■ 新規登録** <br>
- ページ右下のボタンから新規登録ページへ遷移します。
- フォームの項目を埋め`新規登録`ボタンを押すことで登録できます。

**■ ログイン** <br>
- ページ左下のボタンからログインページへ遷移します。
- 登録したemailとpasswordを入力してログインできます。

**■ ログアウト** <br>
- ページ左下のボタンからログアウトできます。

**■ 予定を追加** <br>
- ページ右下のボタンから予定追加ページへ遷移します。
- フォームの項目を埋め`Create Event`ボタンを押すことで投稿できます。

**■ 日別の予定一覧** <br>
- カレンダー部分の`「◯件の予定」`をクリックするとその日の予定一覧が表示されます。
- 表示された一覧は右上の`×`ボタンで閉じることができます。
![dayevents](https://user-images.githubusercontent.com/111602501/194478199-76b5f37e-7a6f-4617-999e-d6877471a126.gif)

**■ 未来日の予定一覧** <br>
- ページ下部に今後の予定が一覧で表示されます。
![futureevents](https://user-images.githubusercontent.com/111602501/194478509-f3bd1613-32cd-4abf-a237-1a305226325f.png)

**■ 予定編集** <br>
- 予定一覧の左端のタイトルをクリックすると編集ページへ遷移します。

**■ 予定削除** <br>
- 予定一覧の右端のボタンから削除が行えます。

## 要件定義
https://docs.google.com/spreadsheets/d/1Qofm7ugGVrcfkAmD1hLeoVQjZyO91pH-SUx9o76g2Y4/edit#gid=982722306

## 開発環境
- HTML,CSS
- Ruby 2.6.5
- Ruby on Rails 6.0.0
  - devise
  - simple_calendar
  - holiday_jp
- MySQL 14.14
- JavaScript
- heroku

## 工夫したポイント
**■ 予定の一覧表示** <br>
今後の予定が確認しやすいように未来日の予定のみの一覧を表示するように実装しました。  
また、日別に何件の予定があるのかを分かりやすくするためにカレンダー内には予定件数のみを表示し、それをクリックすることでその日の予定を確認できるようにしました。  
ページ遷移を減らすためフォームの入力以外はトップページのみで行えるようにしました。

## 今後実装したい機能
- 過去の予定一覧を表示する(ページ下部の未来日の予定一覧部分を切り替える仕様）


# テーブル
## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :events

## events テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | text       | null: false                    |
| start_time | datetime   | null: false                    |

### Association

- belongs_to :user
