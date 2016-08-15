class AddTopicRefToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :topic, foreign_key: true
  end
end
