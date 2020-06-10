module Types
  class PostType < Types::BaseObject
  	field :id, ID, null: false
    field :title, String, null: false
    field :content, String, null: false
    field :body, String, null: false
    field :published, Boolean, null: false
  end
end
