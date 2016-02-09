class Request < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3, maximum: 30}
  validates :email, presence: true, length: {maximum: 250}

end
