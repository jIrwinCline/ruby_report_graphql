module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    Dotenv.load
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      ENV['DEVISE_JWT_SECRET_KEY']
    end

    field :me, resolver: Resolvers::Me

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
    field :reports, [Types::ReportType], null: false
    def reports
      Report.all
    end

    field :create_report, Types::UserType, null: false
      description "generate report based on entries"
    def create_report
      context[:current_user]
    end

    field :fill_report, Types::ReportType, null: false do
      argument :id, ID, required: true
    end
      description "generate report based on entries"
    def fill_report
      Report
    end

  end
end
