class AddAvatarProcessingToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar_processing, :boolean
    add_column :users, :avatar_tmp, :string
  end
end
