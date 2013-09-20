class CreateDelayedJobs < ActiveRecord::Migration
  def change
    add_column :delayed_jobs, :queue, :string
    add_index :delayed_jobs, [:priority, :run_at], :name => 'delayed_jobs_priority'
  end

end
