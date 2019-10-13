class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end

end
