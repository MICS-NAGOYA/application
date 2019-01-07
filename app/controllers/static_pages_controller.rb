class StaticPagesController < ApplicationController
  def home
    @events = Event.all
  end

  def message
  end

  def news_path
  end

  def photo
  end

  def join
  end

  def event_manage
    @events = Event.all
  end
end
