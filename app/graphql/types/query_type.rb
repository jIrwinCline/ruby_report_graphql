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
    # /reports
    field :reports, [Types::BaseString], null: false
    def reports
      Report.make_doc
    end

    # field :download [Types::BaseString], null: false
    # def download
    #   puts 'Hello'
    # end
  end
end
