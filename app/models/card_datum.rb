class CardDatum < ApplicationRecord
  validates :cardNumber, presence:true,length: {minimum:16,maximum:16}
  validates :email, presence:true,length:{maximum:40}
  validates :address, presence:true,length: {minimum:15,maximum:50}
  validates :description, length: {maximum:50}
end
