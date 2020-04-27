module Types
  class ReportType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: true
    field :entries, [Types::EntryType], null: true
    field :entries_count, Integer, null: true
  end

  def make_doc
      Caracal::Document.save '../documents/example.docx' do |docx|
          docx.style do
              id 'Body'
              name 'body'
              font 'Times New Roman'
              size 24
          end
          docx.h1 '
          
          PORTLAND PROJECT 
          PORTLAND CENTER PLAZA
          THE LINC
          '

          docx.page
          docx.p do
              style 'Body'
              text '6: 15	AM	I arrived on location at PCP, parked my vehicle, and met Officer Aguilar outside the Plaid Pantry.'
          end
      end
  end
end
