class List < ApplicationRecord
  # 下記のように記述することで、Listモデルにtitleとbodyに加えて画像を扱うためのimageカラムが追記されたかのように扱うことが出来る。
  has_one_attached :image
end
