class Award < ApplicationRecord
  has_many :nominees, dependent: :destroy
  validates_presence_of :name, :description
end
