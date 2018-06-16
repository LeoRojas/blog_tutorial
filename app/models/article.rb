class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { minimum: 5 }

  # def there_is_stock
  # end

  # def get_category
  # end

  # def set_category
  # end

  # def article_by_author
  # end

  # def set_age
  #   age = function to get age from birthdate
  #   self.age = age
  # end
end
