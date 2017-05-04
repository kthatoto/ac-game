class AddIdsStringToLoginUserIds < ActiveRecord::Migration[5.0]
  def change
    add_column :login_user_ids, :user_ids, :string
  end
end
