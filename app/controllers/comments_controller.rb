class CommentsController < ApplicationController
  before_action :validate_user!
  before_action only: [:edit, :update, :destroy] do
    validate_permission!(select_comment.user)
  end
  before_action :select_comment, only: [:edit,:update, :destroy]

  def new
    @solution = Solution.find(params[:solution_id])
    @comment = @solution.comments.new
  end


  def create
    @solution = Solution.find(params[:solution_id])
    @comment = @solution.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @solution, notice:"Yorumunuz eklendi."
    else
      render :new
    end
  end

  def edit

  end


  def update
   if @comment.update(comment_params)
     redirect_to solution_url(@comment.solution), notice: 'Yorumunuz başarıyla güncellendi.'
   else
     render :edit
   end
 end

 def destroy
   @comment.destroy
   redirect_to solution_url(@comment.solution), notice: 'Yorumunuz başarıyla silindi'
 end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def select_comment
    @comment = Comment.find(params[:id])
  end
end
