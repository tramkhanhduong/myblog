class PostController < ApplicationController
    def index
        @post = Post.all.order('created_ad DESC')
    end
    def show
        @post = Post.find(params[:id])
    end
    def new
    @post = Post.new
    end
    def create
        @post = post.new(post_params)
        if(@post.save)
            redirect_to @post
        else   
            render 'new'
        end
    end
    def edit
        @post = post.find(params[:id])
    end
end
