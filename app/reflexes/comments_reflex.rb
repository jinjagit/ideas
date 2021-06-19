class CommentsReflex < ApplicationReflex
  def add
    Idea.find(params[:id]).comments.create(body: params[:body], username: params[:username])
  end

  def delete
    id = element.dataset["comment-id"]
    comment = Idea.find(params[:id]).comments.find(id)
    comment.destroy
  end

  def edit
    comment = Comment.find(element.dataset.comment_id)
    morph dom_id(comment), render(partial: "edit_form", locals: { comment: comment })
  end

  def update
    comment = Comment.find(element.dataset.comment_id)

    if comment.username == current_user.email
      comment.update(comment_params)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
