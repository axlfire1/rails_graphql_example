module Mutations
  class DeletePost < BaseMutation
    argument :id, Integer, required: true

    type Types::PostType

    def resolve(id:, **attributes)
      Post.find(id).destroy
    end
  end
end
