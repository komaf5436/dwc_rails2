class List < ApplicationRecord
  # 下記のように記述することで、Listモデルにtitleとbodyに加えて画像を扱うためのimageカラムが追記されたかのように扱うことが出来る。
  has_one_attached :image

  # バリデーション設定
  # presence: trueを記述することでデータが存在しなければならないという設定になる
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
