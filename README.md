# Triangle

## 実行方法

````
$ ruby triangle.rb 2, 3, 4
````

## テスト


同値分割するために以下の場合に分けて分割してテストケースを作成した。

| 説明                         | 値       |
|------------------------------|---------|
| すべての辺の長さが等しい         |"5, 5, 5"|
| 2辺の長さが等しい               | "5, 5, 3"|
| 3辺の長さがすべて異なる          |"3, 4, 5"|
| 1辺の長さが他の2辺の長さよりも長い|"5, 2, 3"|
| すべてが負の数字                |"-5, -5, -5"|
| 2辺が負の数字                   |"-5, -5, 3"|
| 1辺が負の数字                   |"5, 5, -3"|
| どれか一つが負の数字             |"-3, 4, 5"|

この他にも境界値として0を指定し上記の例の負の値を0に置き換えて以下のテストケースも作成した。

| 説明                         | 値       |
|------------------------------|---------|
| すべてが0                |"0, 0, 0"|
| 2辺が0                   |"0, 0, 3"|
| 1辺が0                   |"5, 5, 0"|
| どれか一つが0             |"0, 4, 5"|

## テストの実行方法

````
$ bundle install
$ rspec
````
