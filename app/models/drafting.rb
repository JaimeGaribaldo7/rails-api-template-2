class Drafting < ActiveRecord::Base
  belongs_to :team, inverse_of: :draftings
  belongs_to :pokemon, inverse_of: :draftings
end
