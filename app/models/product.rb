class Product < ApplicationRecord
  has_many :likes
  has_many :images
  belongs_to :user, optional: true
  belongs_to :category, optional: true

  accepts_nested_attributes_for :images

  enum condition: {
    "新品、未使用": 1, 
    "未使用に近い": 2, 
    "目立った傷や汚れなし": 3, 
    "やや傷や汚れあり": 4, 
    "傷や汚れあり": 5, 
    "全体的に状態が悪い": 6}

    enum prefecture: {
      "北海道": "北海道",
      "青森県": "青森県",
      "岩手県": "岩手県",
      "宮城県": "宮城県",
      "秋田県": "秋田県",
      "山形県": "山形県",
      "福島県": "福島県",
      "茨城県": "茨城県",
      "栃木県": "栃木県",
      "群馬県": "群馬県",
      "埼玉県": "埼玉県",
      "千葉県": "千葉県",
      "東京都": "東京都",
      "神奈川県": "神奈川県",
      "新潟県": "新潟県",
      "富山県": "富山県",
      "石川県": "石川県",
      "福井県": "福井県",
      "山梨県": "山梨県",
      "長野県": "長野県",
      "岐阜県": "岐阜県",
      "静岡県": "静岡県",
      "愛知県": "愛知県",
      "三重県": "三重県",
      "滋賀県": "滋賀県",
      "京都府": "京都府",
      "大阪府": "大阪府",
      "兵庫県": "兵庫県",
      "奈良県": "奈良県",
      "和歌山県": "和歌山県",
      "鳥取県": "鳥取県",
      "島根県": "島根県",
      "岡山県": "岡山県",
      "広島県": "広島県",
      "山口県": "山口県",
      "徳島県": "徳島県",
      "香川県": "香川県",
      "愛媛県": "愛媛県",
      "高知県": "高知県",
      "福岡県": "福岡県",
      "佐賀県": "佐賀県",
      "長崎県": "長崎県",
      "熊本県": "熊本県",
      "大分県": "大分県",
      "宮崎県": "宮崎県",
      "鹿児島県": "鹿児島県",
      "沖縄県": "沖縄県"
    }

  enum delivery_price: {
    '送料込み（出品者負担）': '送料込み（出品者負担）', 
    '送料込み（出品者負担）': '送料込み（出品者負担）', 
    '着払い（購入者負担）': '着払い（購入者負担）', 
    '着払い（購入者負担）': '着払い（購入者負担）'
  }

  enum delivery_day: {
    '1~2日で発送': '1~2日で発送', 
    '2〜3日で発送': '2〜3日で発送',
    '4〜7日で発送': '4〜7日で発送'
  }

  # created_atカラムを降順で取得する
  scope :sorted, -> { order(created_at: :DESC) }
  # 取得するデータの数 = 4
  scope :limiter, -> { limit(4) }
  # limitとsortedを合わせたもの
  scope :recent, -> { sorted.limiter }
end
