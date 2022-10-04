class ChangeCloumnsNotnullAddEvents < ActiveRecord::Migration[6.0]
  def change
    change_column_null :events, :title,      false
    change_column_null :events, :content,    false
    change_column_null :events, :start_time, false
  end
end