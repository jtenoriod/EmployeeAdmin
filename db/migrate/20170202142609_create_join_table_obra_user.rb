class CreateJoinTableObraUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :obras, :users do |t|
      # t.index [:obra_id, :user_id]
      # t.index [:user_id, :obra_id]
    end
  end
end
