class User < ApplicationRecord
    has_many :champion_owneds
    has_many :champions, through: :champion_owneds
end
