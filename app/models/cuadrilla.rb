class Cuadrilla < ApplicationRecord
  has_many :empleados
  belongs_to :obra
end
