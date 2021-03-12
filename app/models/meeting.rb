class Meeting < ApplicationRecord
  belongs_to :patient
  belongs_to :creneau
end
