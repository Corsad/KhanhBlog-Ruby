class Article < ActiveRecord::Base

    def create
        Article.create(params[:article])
    end

    def self.search(query)
        where("title like ?", "%#{query}%")
    end

    def user_params
        params.require(:article).permit(:title, :body)
    end

end
