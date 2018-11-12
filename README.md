# README

# 第一回 
* http methodって？
  * POSTするってなに？
  * GETするってなに？
  * Railsのルーティングについて
  * http medhodとurlによって判定し、適切なアクションに処理を振り分ける
* form_forとHTML
  * form_forはHTMLをお手軽に構成してくれる便利メソッド
  * ブラウザはHTMLしか理解できないので、最終的に必要になるのはHTML
  * form_forto form_tagの違い
      * https://qiita.com/shunsuke227ono/items/7accec12eef6d89b0aa9
* APIって？
  * APIの通信の流れ
  * ここでもルーティング

# 第二回 配列とhash

# 第三回 MysqlとAR

[問題ページ](https://docs.google.com/spreadsheets/d/1h1C22_dbR44hO_Yk7Z9wcFEvLJfYmB18M9zOY1ftMLI/edit#gid=1321190335)  
SS(スプレッドシート)の「記述」の列は非表示にして、自分で考えてrails consoleで実行してください。  
`例: $ Mac: Article.where(name: 'hoge')`

わからなかったら解答を見てください。  
解答を見ないで全部できるまで繰り返し復習してください。

* ポイント 
  * 検索したい対象によって主語がかわる。ユーザーを検索するならUser.where〜 記事を検索するなら Article.whereとなる。
* 課題
  * Article#indexで検索を実装してみよう！

# 第四回 関連について

* [belongs_to関連付け](https://railsguides.jp/association_basics.html#belongs-to%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91)  
* [has_one関連付け](https://railsguides.jp/association_basics.html#has-one%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91)  
* [has_many関連付け](https://railsguides.jp/association_basics.html#has-many%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91)  

このリンクの部分を図をよく見ながら理解してください。

[問題](https://docs.google.com/spreadsheets/d/1h1C22_dbR44hO_Yk7Z9wcFEvLJfYmB18M9zOY1ftMLI/edit#gid=23860854)

# 効率よく学習するには
* メソッドの使い方がわからなかったら
  * リファレンスをみる https://api.rubyonrails.org/
  * atomでメソッドの定義元にジャンプ
