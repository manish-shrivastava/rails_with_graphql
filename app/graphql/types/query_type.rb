module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
    field :items,
          [Types::ItemType],
          null: false,
          description: "Returns a list of items in the martian library"

    def items
      Item.all
    end
  end
end
