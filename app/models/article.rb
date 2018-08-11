class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  after_create :set_body
  paginates_per 5
  acts_as_votable

  def set_body
    self.text = "FIXED text"
  end
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
