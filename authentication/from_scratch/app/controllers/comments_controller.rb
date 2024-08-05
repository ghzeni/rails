# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_article
  before_action :set_comment, only: %i[destroy]

  def create
    @comment = @article.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to article_path(@article), notice: 'Comment was successfully created.'
    else
      redirect_to article_path(@article), alert: 'Error creating comment.'
    end
  end

  def destroy
    @comment.destroy
    redirect_to article_path(@article), status: :see_other, notice: 'Comment was successfully deleted.'
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @comment = @article.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
