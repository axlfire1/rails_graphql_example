# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true, description: "ID of the object."
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ID], required: true, description: "IDs of the objects."
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    field :find_post, Types::PostType, "Find a post by ID" do
      argument :id, ID
    end

    def find_post(id:)
      Post.find(id)
    end

    field :post_list, [Types::PostType, null: true], "list of posts", null: false

    def post_list
      Post.all
    end
  end
end
