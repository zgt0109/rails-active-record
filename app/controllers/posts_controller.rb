class PostsController < ApplicationController
	before_filter :find_post, only:[:show, :edit, :update, :destroy]

	def index
		# select * from posts;
		@posts = Post.all
	end

	def show
		
	end

	def many_attachment
		
	end

	def small_attachment
		
	end

	def new
		@post = Post.new
	end

	def create
		# insert into `posts` (`title`, `content`, `created_at`, `updated_at`) values ('post-title', 'post-content', '2016-9-20 12:30:00', '2016-9-20 12:30:00');
	 	@post = Post.new params[:post]
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		# update `posts` set `title` = 'zgt' where `posts`.`id` = 12;
		# update posts set title = 'zgt' where posts.id = 12;
		if @post.update_attributes(params[:post])
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		# delete from posts where id = 10;
		@post.destroy
		redirect_to posts_path
	end

	private
		def find_post
			# select * from posts where id = 1;
			@post = Post.find(params[:id])
		end
end