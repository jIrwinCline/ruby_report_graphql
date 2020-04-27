module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
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
end
