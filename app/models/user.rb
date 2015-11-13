class User < ActiveRecord::Base
  ROLES=['first','second','third']
#  validates :type, inclusion:{in: :Book::TYPES}
    validates :role, inclusion: { in: User::ROLES }
end
