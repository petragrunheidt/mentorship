class AddsUserForeignKeyToMenteeAndMentor < ActiveRecord::Migration[7.1]
  def change
    add_reference :mentees, :users, foreign_key: true
    add_reference :mentors, :users, foreign_key: true
  end
end
