class Book < ActiveRecord::Base
    belongs_to :user

    validates :title, presence: true
    validates :author_name, presence: true
    validates :content, presence: true
end