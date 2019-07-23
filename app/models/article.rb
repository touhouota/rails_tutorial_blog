class Article < ApplicationRecord
  has_many :comments
  # TODO: バリデーションはMySQLに任せる
  validates :title, presence: true, length: {minimum: 5}
end
