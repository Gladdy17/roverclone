class MoveBioToActionText < ActiveRecord::Migration[7.1]
  def change
    Member.all.find_each do |member|
      member.update(content: member.bio)
    end
     remove_column :members, :bio
  end
end
