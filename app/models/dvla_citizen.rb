class DvlaCitizen < ApplicationRecord
  connects_to database: { writing: :DVLA, reading: :DVLA }
end