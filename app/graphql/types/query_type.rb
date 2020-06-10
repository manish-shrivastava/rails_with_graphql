module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_orders, [Types::OrderType], null: false

    def all_orders
        Order.all
    end

    field :items,
          [Types::ItemType],
          null: false,
          description: "Returns a list of items in the martian library"

    def items
      Item.all
    end

    field :posts,
          [Types::PostType,null: true],
          null: false

    def posts
      Post.all
    end

    field :posts_connections,
          [Types::PostType.connection_type],
          null: false

    def posts_connections
      Post.all
    end

    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    # /user/:id
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end 




  end
end
