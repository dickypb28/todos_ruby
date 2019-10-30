class Todo < ApplicationRecord
    def completed?
        completed_at?
    end

    #membuat method kemudian dipanggil di 
    def complete!
        touch :completed_at
    end

    def mark_incomplete!
        update_column :completed_at, nil
    end
end