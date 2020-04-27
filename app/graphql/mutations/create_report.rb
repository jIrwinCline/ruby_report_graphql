class Mutations::CreateReport < Mutations::BaseMutation
    argument :entries, [Types::EntryType], required: true
    # argument :email, String, required: true

    field :report, Types::ReportType, null: false
    field :errors, [String], null: false

    def resolve(name:, email:)
        user = Report.new(name: name, email: email)
        if user.save
            {
                user: user,
                errors: []
            }
        else
            {
                user: nil,
                errors: user.errors.full_messages
            }
        end
    end
end