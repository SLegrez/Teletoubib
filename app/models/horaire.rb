class Horaire < ApplicationRecord
  belongs_to :medecin
  has_one :meeting
end
