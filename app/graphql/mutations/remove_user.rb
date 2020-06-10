

class Mutations::RemoveUser < Mutations::BaseMutation
  argument :id, ID, required: true

  field :user, Types::UserType, null: false

  def resolve(id:)
    user = User.find(id)
         user.destroy!
      {
        user: user
      }
    
  end
end
