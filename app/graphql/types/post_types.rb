# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    description "A blog post"
    field :id, Integer
    field :title, String
    field :content, String
  end
end
