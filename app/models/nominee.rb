class Nominee < ApplicationRecord
  belongs_to :award

  validates_presence_of :first_name, :last_name, :biography
end
