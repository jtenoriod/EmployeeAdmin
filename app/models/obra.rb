class Obra < ApplicationRecord
  has_many :cuadrillas
  has_and_belongs_to_many :users , join_table: :obras_users

end
