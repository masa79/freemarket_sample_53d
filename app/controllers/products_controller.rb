class ProductsController < ApplicationController
  def index  
    
  end 

  def show 
  end

  def new
    
  end

  def upload
    @category = ["レディース","メンズ","ベビー・キッズ","インテリア・住まい・小物","本・音楽・ゲーム","おもちゃ・ホビー・グッズ","コスメ・香水・美容","家電・スマホ・カメラ","スポーツ・レジャー","ハンドメイド","チケット","自動車・オートバイ","その他"]
    @condition = ["新品、未使用","未使用に近い","目立った傷や汚れなし","やや傷や汚れあり","傷や汚れあり","全体的に状態が悪い"]
    @burden = ["送料込み(出品者負担)","着払い(購入者負担)"]
    @delivaly_days = ["1~2日で発送","2~3日で発送","4~7日で発送"]
  end


end
