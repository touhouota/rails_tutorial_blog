class Article < ApplicationRecord
  # TODO: バリデーションはMySQLに任せる
  validates :title, presence: true, length: {minimum: 5}
end
