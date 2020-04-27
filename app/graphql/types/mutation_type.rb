module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
    field :create_user, mutation: Mutations::User::CreateUser

    field :login, mutation: Mutations::User::Login
    field :token_login, mutation: Mutations::User::TokenLogin
    field :logout, mutation: Mutations::User::Logout
    field :update_user, mutation: Mutations::User::UpdateUser
    field :reset_password, mutation: Mutations::User::ResetPassword
    field :send_reset_password_instructions, mutation: Mutations::User::SendResetPasswordInstructions
    field :unlock, mutation: Mutations::User::Unlock
    field :resend_unlock_instructions, mutation: Mutations::User::ResendUnlockInstructions
  end
end
