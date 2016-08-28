class Customer < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :zip , length: { minimum: 2, maximum: 30 } , presence: true
  validates :address1 , length: { minimum: 2, maximum: 30 } , presence: true
  validates :address2 , length: { minimum: 2, maximum: 30 } , presence: true
end
