module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
    # /entries
    field :entries, [Types::EntryType], null: false
    def entries
      Entry.all
    end
    field :report, [Types::BaseString], null: false
    def report
      'Hello'
    end
  end
end
