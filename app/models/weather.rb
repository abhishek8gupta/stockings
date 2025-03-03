class Weather < ApplicationRecord
    belongs_to :user
    validates :city, presence: true
    validates :city, format: { without: /\s/ }
end
