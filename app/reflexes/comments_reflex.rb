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
    morph "#foo", render(partial: "edit_form")
  end

  def update
    puts "hello"
  end
end