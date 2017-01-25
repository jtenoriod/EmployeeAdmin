class Empleado < ApplicationRecord
  has_many :costos
  belongs_to :cuadrilla
end
