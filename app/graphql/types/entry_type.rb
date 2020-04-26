module Types
  class EntryType < Types::BaseObject
    field :id, Integer, null: false
    field :time, String, null: false
    field :text, String, null: false
    field :image, String, null: true
  end
end
