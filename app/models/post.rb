class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments
    def liked?(user)
        !!self.likes.find{|like| like.user_id == user.id}
    end
    validates :post , length:{minimum:20 , maximum:150}
end
