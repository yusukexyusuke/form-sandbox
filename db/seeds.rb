# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = [
  { name: 'yusuke', email: 'yusuke@tandems.co.jp', title: '今日のわんこ' },
  { name: 'kazuya', email: 'kazuya@tandems.co.jp', title: '今日のにゃんこ' },
  { name: 'shiori', email: 'shiori@tandems.co.jp', title: 'スープカレーの作り方' },
  { name: 'risa', email: 'risa@tandems.co.jp', title: '地震雲について' },
  { name: 'ryo', email: 'ryo@tandems.co.jp', title: '長野県諏訪郡原町はいいところ' },
  { name: 'saito', email: 'saito@cyclo.jp', title: 'カンボジアでお腹こわした話' },
  { name: 'sumiya', email: 'sumiya@cyclo.jp', title: '会社の成長について' },
  { name: 'hoge', email: 'hoge@hoge.co.jp', title: 'ポケモン150匹いえるかな' },
  { name: 'piyo', email: 'piyo@piyo.co.jp', title: '今日のわんこ' }
]

articles.each do |article|
  user = User.create(name: article[:name], email: article[:email])
  Article.create(title: article[:title], body: article[:title] * 10, user: user)
end
