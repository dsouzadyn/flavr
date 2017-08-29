class CommentsController < ApplicationController
  before_action :authenticate

  def create
    @restraunt = Restraunt.find(params[:restraunt_id])
    @comment = @restraunt.comments.build(comment_params)
    @comment.user = current_user

    @comment.save
    redirect_to @restraunt
  end

  def destroy
    @restraunt = Restraunt.find(params[:restraunt_id])
    @comment = @restraunt.comments.find(params[:id])

    @comment.destroy
    redirect_to @restraunt
  end

  private
  def current_user
    current_user = User.find(session[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
