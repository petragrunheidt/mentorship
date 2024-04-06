class AddsUserForeignKeyToMenteeAndMentor < ActiveRecord::Migration[7.1]
  def change
    add_reference :mentees, :user, foreign_key: true
    add_reference :mentors, :user, foreign_key: true
  end
end
