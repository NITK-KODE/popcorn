class Like < ApplicationRecord
  belongs_to :user , dependent: :destroy
  belongs_to :post , dependent: :destroy
  validates :user_id, uniqueness:{scope: :post_id}
end
