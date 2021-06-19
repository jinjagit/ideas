class CommentsReflex < ApplicationReflex
  def add
    Idea.find(params[:id]).comments.create(body: params[:body])
  end
end