module Mutations
  class CreatePost < BaseMutation
    # arguments passed to the `resolve` method
    argument :title, String, required: true
    argument :content, String, required: true

    # return type from the mutation
    type Types::PostType

    def resolve(title: nil, content: nil)
      Post.create!(
        title: title,
        content: content,
      )
    end
  end
end
