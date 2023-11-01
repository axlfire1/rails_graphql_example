module Mutations
  class UpdatePost < BaseMutation
    argument :id, Integer, required: true
    argument :title, String, required: false
    argument :content, String, required: false

    type Types::PostType

    def resolve(id:, **attributes)
      Post.find(id).tap do |post|
        post.update!(attributes)
      end
    end
  end
end
