class Book < ActiveRecord::Base
    validates :name, :presence => true
    has_many :authorbooks
    has_many :authors, :through =>:authorbooks
    TYPES=['first','second','third']
  #  validates :type, inclusion:{in: :Book::TYPES}
      validates :type, inclusion: { in: Book::TYPES }
end
