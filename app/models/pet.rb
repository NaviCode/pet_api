class Pet < ApplicationRecord
    before_create :set_time
    belongs_to :user

    private
    def set_time
        self.lastFed = Time.now
        self.lastPlayed = Time.now
    end
end
