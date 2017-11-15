class ItemSerializer < ActiveModel::Serializer
  # attributes to be serialized
  attributes :id, :title, :todo_id

end