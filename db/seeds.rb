# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

records = [
  { user: { profile: { hobby: 'スポーツ' },     name: 'yusuke', email: 'yusuke@tandems.co.jp' },  articles: [{ title: '今日のわんこ' }, {title: '明日のわんこ'}, {title: '明後日のわんんこ'}]  },
  { user: { profile: { hobby: '将棋' },         name: 'kazuya', email: 'kazuya@tandems.co.jp' },  articles: [{ title: '今日のにゃんこ' }] },
  { user: { profile: { hobby: '料理' },         name: 'shiori', email: 'shiori@tandems.co.jp' },  articles: [{ title: 'スープカレーの作り方' }] },
  { user: { profile: { hobby: 'ファッション' }, name: 'risa',   email: 'risa@tandems.co.jp' },    articles: [{ title: '地震雲について' }] },
  { user: { profile: { hobby: '音楽' },         name: 'ryo',    email: 'ryo@tandems.co.jp' },     articles: [{ title: '長野県諏訪郡原町はいいところ' }] },
  { user: { profile: { hobby: 'DJ' },           name: 'saito',  email: 'saito@cyclo.jp' },        articles: [{ title: 'カンボジアでお腹こわした話' }] },
  { user: { profile: { hobby: 'マラソン' },     name: 'sumiya', email: 'sumiya@cyclo.jp' },       articles: [{ title: '会社の成長について' }] },
  { user: { profile: { hobby: 'グルメ' },       name: 'hoge',   email: 'hoge@hoge.co.jp' },       articles: [{ title: 'ポケモン150匹いえるかな' }] },
  { user: { profile: { hobby: nil },   name: 'piyo',   email: 'piyo@piyo.co.jp' },       articles: [{ title: '今日のわんこ' }] }
]

records.each do |record|
  user = record[:user]
  profile = record[:user][:profile]
  articles = record[:articles]

  # ユーザーを作成
  user = User.new(name: user[:name], email: user[:email])

  # プロフィールを作成
  if profile[:hobby]
    user.build_profile(hobby: profile[:hobby])
  end
 
  # 記事を作成
  articles.each do |article|
    user.articles.build(title: article[:title], body: article[:title] * 10)
  end

  # saveするとuserもprofileもarticleも全部保存される
  user.save!
end
