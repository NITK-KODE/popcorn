class Post < ApplicationRecord
    belongs_to :user
    has_many :likes , dependent: :destroy
    has_many :comments , dependent: :destroy
    def liked?(user)
        !!self.likes.find{|like| like.user_id == user.id}
    end
    validates :post , length:{minimum:20 , maximum:150}
end
