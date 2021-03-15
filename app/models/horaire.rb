class Horaire < ApplicationRecord
  belongs_to :medecin
  has_one :meeting

  def start_time
    self.debut ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end
end
