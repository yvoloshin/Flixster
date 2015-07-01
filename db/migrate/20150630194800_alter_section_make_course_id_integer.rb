class AlterSectionMakeCourseIdInteger < ActiveRecord::Migration
  def change
  	remove_column :sections, :course_id
  		add_column :sections, :course_id, :integer
  end
end
