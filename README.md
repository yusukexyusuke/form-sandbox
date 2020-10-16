[wiki](https://github.com/yusukexyusuke/form-sandbox/wiki)にも色々書いてるので目を通してください！

# 開発環境
Cloud9を利用します。

* Cloud9 設定方法は[こちら](https://dotinstall.com/lessons/basic_c9_v2)
  * Cloud9に関するTipsは[こちら](https://github.com/yusukexyusuke/form-sandbox/wiki/Cloud9)

# 初期設定

```
$ bundle install # Gemfileに記載されているGemをインストール
$ rails db:migrate # DBの初期設定
$ rails db:seed # 初期データの投入
$ rails s # サーバー起動
```

## DBをリセットしたい場合
```
$ rails db:reset
$ rails db:migrate:reset
```

# 復習シートの使い方

[こちら](https://docs.google.com/spreadsheets/d/1w5kdc4SiXzVFVJJawQrtdEzd2qeTaFWCkLTebQ0nOmI/edit#gid=0)のシートをコピーして使用してください。

### コピーの仕方
[ファイル] -> [コピーを作成]

## 配列とhash
配列とhashはとても頻繁にプログラムで登場します。  
このシートの表を配列やhashに変換できるように訓練してください。  
また作った配列やhashの中身に自在にアクセス出来るようになってください。  
  
配列とhashを制するものはプログラムを制すると言っても過言ではないと思います。  

## よくつかう判定メソッド
こちらもとても頻繁に登場します。  
「xxxxという条件で処理を行いたい」というときにif文章を書くことになりますが、  
その際に頻繁に必要になります。
10個たらずなので全部頭にいれておいてください。  
(使い方や書き方は完全に頭にいれなくても大丈夫です。「こういうメソッドが使える」と思いつくことが大事です。)


## ルーティングとHTTPメソッド
[HTTPリクエスト](https://wa3.i-3-i.info/word1841.html)
[HTTPメソッド(CRUD)についてまとめた](https://qiita.com/fukulingo/items/a9e8d18467fe3e04068e)

上記の記事を読みふんわりでいいので理解しておいてください。  
POST GET DELETE PUTはRailsのなかで頻繁に登場しますので、  
ここを理解しているとFormの部分の理解がとてもスムーズになります。

## ActiveRecord

SS(スプレッドシート)の「記述」の列は非表示にして、自分で考えてrails consoleで実行してください。  
`例: $ Mac: Article.where(name: 'hoge')`

わからなかったら解答を見てください。  
解答を見ないで全部できるまで繰り返し復習してください。

* ポイント 
  * 検索したい対象によって主語がかわる。ユーザーを検索するならUser.where〜 記事を検索するなら Article.whereとなる。

## 関連について

* [belongs_to関連付け](https://railsguides.jp/association_basics.html#belongs-to%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91)  
* [has_one関連付け](https://railsguides.jp/association_basics.html#has-one%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91)  
* [has_many関連付け](https://railsguides.jp/association_basics.html#has-many%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91)  

このリンクの部分を図をよく見ながら理解してください。

# 効率よく学習するには
* メソッドの使い方がわからなかったら
  * リファレンスをみる https://api.rubyonrails.org/
