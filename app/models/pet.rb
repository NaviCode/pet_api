class Pet < ApplicationRecord
    before_create :set_time
    belongs_to :user

    def set_time
        self.lastFed = DateTime.now
        self.lastPlayed = DateTime.now
    end
end
