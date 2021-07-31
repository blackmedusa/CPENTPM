class RegistryCitizen < ApplicationRecord
  connects_to database: { writing: :Birthdeathregistry, reading: :Birthdeathregistry }
end
