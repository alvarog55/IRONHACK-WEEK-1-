require "date"
class Post
	attr_accessor :title, :date, :text
	def initialize(title,date,text)
		@title = title
		@date = date
		@text = text
	end
end
class Blog 
	def initialize
		@posts = [ ]
		@front_page = ""
		@Blog = 0
	end

	def add_post(post)
	@posts.push(post)

	end

	def sort_by_date
	@posts.sort { |a,b| a.created_at <=> b.created_at }
	end
end

	def create_front
	@posts.each do |post|
		@front_page += post.title + "\n"
		@front_page += "*" * 14 + "\n"
		@front_page += post.text + "\n"
		@front_page += "_" * 18 + "\n"

	end
end
	def publis_front_page
		puts @front_page
	end



class Sponsored < Post
	def title
		@title = "*********#{super}*********"
	end
end

first_post = Post.new("i love bcn", 20150605, "This is the content of my first article")
second_post = Sponsored.new("i run every morning", 20150709, "This is the content of my second article")
third_post = Post.new("i go to the beach at weekend", 20150709, "This is the content of my third article")


my_blog = Blog.new

my_blog.add_post(first_post)
my_blog.add_post(second_post)

my_blog.create_front

