class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts ,  dependent: :destroy
  has_many :messages , dependent: :destroy
  has_many :likes
  has_many :comments
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable , :confirmable
  validates :email , format:{with:/\A.+@nitk.edu.in+\z/ , message:"NITK edu account required"}
  validates :username , length: { minimum: 5 , maximum:15 }
end
