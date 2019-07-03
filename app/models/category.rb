class Category < ApplicationRecord
  has_many :products

  enum category: {"----":0,"レディース":1,"メンズ":2,"ベビー・キッズ":3,"コスメ・香水・美容":4,"インテリア・住まい・小物":5,"本・音楽・ゲーム":6,"おもちゃ・ホビー・グッズ":7,"家電・スマホ・カメラ":8,"スポーツ・レジャー":9,"ハンドメイド":10,"チケット":11,"自動車・オートバイ":12,"その他":13}

end
