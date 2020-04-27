class Mutations::CreateUser < Mutations::BaseMutation
    argument :fname, String, required: true
    argument :lname, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :dpsst, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(fname:, lname:, email:, password:, dpsst: )
        user = User.new(fname: fname, lname: lname, email: email, password: password, dpsst: dpsst)
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