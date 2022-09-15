# coding: utf-8

# ユーザーに紐づいた投稿を作成します。

Post.create!(content: 'こんにちわ！僕ドラえもんです。', user_id: 1)
Post.create!(content: 'はい！タケコプター！', user_id: 1)
Post.create!(content: 'ドラえも〜〜ん！', user_id: 2)
Post.create!(content: 'お風呂に入りたいわ〜', user_id: 3)
Post.create!(content: 'おーれはジャイアーン！ガキ大将ー！', user_id: 4)
Post.create!(content: 'ママー！', user_id: 5)
Post.create!(content: 'これがダメージを追う感覚か。', user_id: 6)
Post.create!(content: 'ナーベラル・ガンマよ。ナザリックが威を示せ！', user_id: 7)
Post.create!(content: 'エル、プサイ、コングルー', user_id: 8)
Post.create!(content: 'バカなの？死ぬの？', user_id: 9)
Post.create!(content: 'トゥットゥルー', user_id: 10)
Post.create!(content: 'セカンドエディションバージョン２.0', user_id: 11)
Post.create!(content: 'スターバーストストリーム！', user_id: 12)
Post.create!(content: 'キリト君！', user_id: 13)
Post.create!(content: '真実はいつも一つ！', user_id: 14)
Post.create!(content: 'こんにちは！僕、きくモンです！', user_id: 15)

# ユーザーをひとりずつ作成します。

User.create!(name: 'ドラえもん', email: 'd@email.com', image: 'user_1.png', password: 'foobar')
User.create!(name: 'のび太', email: 'n@email.com', image: 'user_2.png', password: 'foobar')
User.create!(name: 'しずかちゃん', email: 's@email.com', image: 'user_3.png', password: 'foobar')
User.create!(name: 'ジャイアン', email: 'j@email.com', image: 'user_4.png', password: 'foobar')
User.create!(name: 'スネ夫', email: 'suneo@email.com', image: 'user_5.png', password: 'foobar')
User.create!(name: 'アインズウルゴーン', email: 'ainz@email.com', image: 'user_1.png', password: 'foobar')
User.create!(name: 'モモンガ', email: 'm@email.com', image: 'user_2.png', password: 'foobar')
User.create!(name: '鳳凰院凶魔', email: 'kyouma@email.com', image: 'user_3.png', password: 'foobar')
User.create!(name: '牧瀬クリス', email: 'clis@email.com', image: 'user_4.png', password: 'foobar')
User.create!(name: 'まゆしぃ', email: 'mayusi@email.com', image: 'user_5.png', password: 'foobar')
User.create!(name: 'ダル', email: 'daru@email.com', image: 'user_1.png', password: 'foobar')
User.create!(name: 'キリト', email: 'kirito@email.com', image: 'user_2.png', password: 'foobar')
User.create!(name: 'アスナ', email: 'asuna@email.com', image: 'user_3.png', password: 'foobar')
User.create!(name: '江戸川コナン', email: 'konan@email.com', image: 'user_4.png', password: 'foobar')
User.create!(name: 'きくモン', email: 'kikumon@email.com', image: 'user_5.png', password: 'foobar')
