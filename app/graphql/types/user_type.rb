module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :fname, String, null: true
    field :lname, String, null: true
    field :email, String, null: true
    field :dpsst, String, null: true
    field :reports, [Types::ReportsType], null: true
    field :reports_count, Integer, null: true

    def reports_count
      object.reports.size
    end
  end
end
