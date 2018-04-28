class Progress < ApplicationRecord
    validates :date, presence: true
    validates :weight, format: { with: /\A\d+\z/, message: "your weight can only consist of integers and decimals" }
    validates :goal, presence: true
end
