module Types
  class ReportType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: true

  end
end
