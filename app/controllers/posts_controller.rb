class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new    
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end


class Student
  def initialize(last_name,fiest_name)
   @last_name = last_name
   @first_name = fiest_name
  end 
  def 【introduce】
    puts "私の名前は「#{@last_name + " " + @first_name}」です。"
  end
end

student = Student.new("山田", "太郎")
student.introduce