class NhisCitizen < ApplicationRecord
  connects_to database: { writing: :NHIS, reading: :NHIS }
end
