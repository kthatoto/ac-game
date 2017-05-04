class CreateLoginUserIds < ActiveRecord::Migration[5.0]
  def change
    create_table :login_user_ids do |t|

      t.timestamps
    end
  end
end
