class User < ActiveRecord::Base
    has_many :books, dependent: :destroy

    validates :username, presence: true
    validates :username, uniqueness: true
    
    has_secure_password
end
