class Reservation < ActiveRecord::Base
    belongs_to :guest, :class_name => "User"
    belongs_to :listing
    has_many :reviews
    has_many :guests, :class_name => "User", through: :review
end