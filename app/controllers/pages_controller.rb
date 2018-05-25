class PagesController < ApplicationController
  def about
  end

  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
