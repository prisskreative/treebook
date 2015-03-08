class AddUserIdToStatuses < ActiveRecord::Migration
  def change

    # add a column on the statuses table call user id
    add_column :statuses, :user_id, :integer

    # find a user base on the status
    add_index :statuses, :user_id

    # remove name field on the status
    remove_column :statuses, :name

  end
end
