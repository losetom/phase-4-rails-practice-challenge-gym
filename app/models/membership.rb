class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates :client, uniquness: true
end
