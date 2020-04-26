module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :entries, [Types::EntryType], null: true
    field :entries_count, Integer, null: true

    def entries_count
      object.entries.size
    end
  end
end
