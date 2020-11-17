class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @topic_id = params[:topic_id]
  end

  def create #コメントを登録する
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save #コメント登録の条件分岐
      redirect_to topics_path, success: 'コメントに成功しました' 
    else
      flash.now[:danger] = 'コメントに失敗しました'
    end
  end
 
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    flash[:success] = 'コメントを解除しました'
    redirect_to topics_path
  end

  private
  def comment_params
    params.require(:comment).permit(:topic_id, :content)
  end
end
