class Meeting < ApplicationRecord
  belongs_to :patient
  belongs_to :horaire
end
