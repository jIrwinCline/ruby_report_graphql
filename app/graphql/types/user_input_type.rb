class Types::UserInputType < Types::BaseInputObject
  description "Attributes to create a user."
  argument :fname, String,'Firstname of user', required: true
    argument :lname, String,'Lastname of user', required: true
    argument :email, String,'Email of user', required: true
    argument :password, String,'Password of user', required: true
    argument :passwordConfirmation, String, 'Password confirmation', required: true
    argument :dpsst, String,'dpsst number of user', required: false
end