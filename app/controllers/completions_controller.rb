class CompletionsController < ApplicationController
    def create

        #me-refactor method touch complete_at dan meng-extract method complete!
        todo.complete!
        redirect_to todos_path
    end

    def destroy
        todo.mark_incomplete!
        redirect_to todos_path
    end

    #refactor current_user.todos.find menjadi fungsi private
    private
    def todo
        current_user.todos.find(params[:todo_id])
    end

end