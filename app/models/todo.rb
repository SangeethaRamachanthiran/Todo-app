class Todo < ApplicationRecord
    def to_pleasent_string
        "#{id}: #{task} #{task_date} #{status} "
    end
end
