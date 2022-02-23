class Restaurant < ApplicationRecord
  has_many :reviews

  # validates :name, presence: { message: 'Coloca o nome aí' }
  validates :name, :address, :stars, presence: true
end
