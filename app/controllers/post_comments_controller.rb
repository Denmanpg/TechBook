class PostCommentsController < ApplicationController
  
  before_action :set_post_comment, only: [:edit, :update, :destroy]

  def edit
  end

  def create
  	@post_comment = PostComment.new(post_comment_params)

  	respond_to do |format|
  		if @post_comment.save
  			format.html {redirect_to post_path(id: @post_comment.post_id), notice: "Comment was created successfully."}
  		else
  			format.html {redirect_to post_path(id: @post_comment.post_id), notice: "Comment failed to post."}
  		end
  	end
  end

  def update
  	respond_to do |format|
  		if @post_comment.update(post_comment_params)
  			format.html {redirect_to post_path(id: @post_comment.post_id), notice: "Comment was updated successfully."}
  		else
  			format.html {render :edit}
  		end
  	end
  end

  def destroy
  	@post_comment.destroy
  	respond_to do |format|
  		format.html {redirect_to post_path(id: @post_comment.post_id), notice: "Your comment was Destroyed!"}
  end
end

private

def post_comment_params
	params.require(:post_comment).permit( :user_id, :comment_entry, :post_id)
end

def set_post_comment
	@post_comment = PostComment.find(params[:id])
end

end

