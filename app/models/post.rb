class Post < ApplicationRecord
    belongs_to :user
    has_many :likes , dependent: :destroy
    has_many :comments, -> { order(created_at: :desc) }, dependent: :destroy
    def liked?(user)
        !!self.likes.find{|like| like.user_id == user.id}
    end
    validates :post , length:{minimum:20}
end
