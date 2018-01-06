class PagesController < ApplicationController
  def home
  @post = Blog.all
  @skills = Skill.all
  @porfolio = Portfolio.all
  end

  def about
  end

  def contact
  end
end
