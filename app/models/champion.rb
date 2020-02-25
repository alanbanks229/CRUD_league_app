class Champion < ApplicationRecord
    has_many :champion_owneds
    has_many :users, through: :champion_owneds
end
