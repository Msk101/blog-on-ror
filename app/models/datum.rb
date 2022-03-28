class Datum < ApplicationRecord
    validates :name, presence: true, length: {minimum:6, maximum: 50}
    validates :description, presence: true, length: {minimum:10, maximum: 100}   
end
