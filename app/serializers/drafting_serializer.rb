class DraftingSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :team, :pokemon
  # has_one :team
  # has_one :pokemon
end
